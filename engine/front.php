<?php
final class Front {
	private $registry;
	private $pre_action = array();
	private $error;

	public function __construct($registry) {
		$this->registry = $registry;
	}

	public function addPreAction($pre_action) {
		$this->pre_action[] = $pre_action;
	}

	public function dispatch($action, $error) {
		ocmStartup($this->registry);

    $this->error = $error;

		foreach ($this->pre_action as $pre_action) {
			$ocm_route = $pre_action->getId(). '/index';

      $output = null;

      if (!OCM_IS_ADMIN || ($this->registry->get('user') && $this->registry->get('user')->isLogged())) {
        $ocm_result = $this->registry->get('ocmodify')->event->trigger('controller/' . $ocm_route . '/before', array(&$ocm_route, &$args, &$output));
        
  			if ($ocm_result instanceof Action) {
  				$action = $ocm_result;
  				break;
  			}
      }
      
			$result = $this->execute($pre_action);
      
      if (!OCM_IS_ADMIN || ($this->registry->get('user') && $this->registry->get('user')->isLogged())) {
        $ocm_result = $this->registry->get('ocmodify')->event->trigger('controller/' . $ocm_route . '/after', array(&$ocm_route, &$args, &$output));
        
  			if ($ocm_result instanceof Action) {
  				$action = $ocm_result;
  				break;
  			}
      }

			if ($result) {
				$action = $result;

				break;
			}
		}

		while ($action) {
			$action = $this->execute($action);
		}
	}

	private function execute($action) {
		$result = $action->execute($this->registry);

		if (is_object($result)) {
			$action = $result;
		} elseif ($result === false) {
			$action = $this->error;

			$this->error = '';
		} else {
			$action = false;
		}

		return $action;
	}
}