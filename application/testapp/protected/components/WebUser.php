<?php

class WebUser extends CWebUser
{
	/**
	 * Overrides a Yii method that is used for roles in controllers (accessRules).
	 *
	 * @param string $operation Name of the operation required (here, a role).
	 * @param mixed $params (opt) Parameters for this operation, usually the object to access.
	 * @return bool Permission granted?
	 */
	public function checkAccess($operation, $params=array())
	{
		if (empty($this->id)) {
			// Not identified => no rights
			return false;
		}
		$role = $this->getState("role");
		if ($role === 'administrator') {
			return true; // admin role has access to everything
		}
//		if ($role === 'seller') {
//			return true; // admin role has access to everything
//		}
		// allow access if the operation request is the current user's role
		return ($operation === $role);
	}
        
        public function userIsAdmin()
	{
		if (empty($this->id)) {
			// Not identified => no rights
			return false;
		}
		$role = Yii::app()->user->getState('role');
		if ($role === 'administrator') {
                    return true; // admin role has access to everything
                } else {
                    return false;
                }
        }
        
                public function userIsSeller()
	{
		if (empty($this->id)) {
			// Not identified => no rights
			return false;
		}
		$role = Yii::app()->user->getState('role');
		if ($role === 'seller') {
                    return true; // admin role has access to everything
                } else {
                    return false;
                }
        }
}