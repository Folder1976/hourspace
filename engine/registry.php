<?php
final class Registry {
	private $data, $proxy = array();

  public function __construct() {
    // Startup ocmodify engine
    require_once (DIR_SYSTEM . 'ocmodify/startup.php');
    
    // Set ocmodify core
    $this->set('ocmodify', new OCMRegistry($this));
    
    // List proxies
    $this->proxy = ocmGetProxies();
  }

	public function get($key) {
		return (isset($this->data[$key]) ? $this->data[$key] : null);
	}

	public function set($key, $value) {
		// Set value
    $this->data[$key] = $value;

    // Check proxy
    if (isset($this->proxy[$key])) {
      foreach($this->proxy[$key] as &$proxy) {
        if ($proxy::status($this)) {
          $this->data[$key] = new $proxy($this->get('ocmodify'), $this->data[$key]);
        }
      }
    }
	}

	public function has($key) {
		return isset($this->data[$key]);
	}
}