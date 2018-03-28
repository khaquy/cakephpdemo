<?php
App::uses('AppController', 'Controller');

class UsersController extends AppController {

    public $paginate = array(
        'limit' => 25,
        'conditions' => array('status' => '1'),
        'order' => array('User.username' => 'asc' ) 
    );
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add');
    }



// public function login(){

//  if ($this->request->is('post')) {
//         if ($this->Auth->login()) {
//             return $this->redirect($this->Auth->redirectUrl());
//         }
//         $this->Flash->error(__('Invalid username or password, try again'));
//     }

// }

public function login() {
        
        //if already logged-in, redirect
        if($this->Session->check('Auth.User')){
            $this->redirect(array('action' => 'index'));        
        }
        
        // if we get the post information, try to authenticate
        if ($this->request->is('post')) {
            if ($this->Auth->login()) {
                $this->Session->setFlash(__('Welcome, '. $this->Auth->user('username')));
                $this->redirect($this->Auth->redirectUrl());
            } else {
                $this->Session->setFlash(__('Invalid username or password'));
            }
        } 
    }

    // public function login() {
        
    //     //if already logged-in, redirect
    //     if($this->Session->check('Auth.User')){
    //         $this->redirect(array('action' => 'index'));        
    //     }

        
    //     // if we get the post information, try to authenticate
    //     if ($this->request->is('post')) {
              
    //         if ($this->Auth->login()) {
    //             die();
    //             $this->Session->setFlash(__('Welcome, '. $this->Auth->user('username')));

    //             $this->redirect($this->Auth->redirectUrl());
    //         } else {
    //             $this->Session->setFlash(__('Invalid username or password'));
    //         }


    //     } 
    // }

    public function index() {
        $this->User->recursive = 0;
        $this->set('users', $this->paginate());
    }

public function logout() {
    return $this->redirect($this->Auth->logout());
    
}
    public function view($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        $this->set('user', $this->User->findById($id));
    }

    public function add() {
        if ($this->request->is('post')) {

            $this->User->create();
            if ($this->User->save($this->request->data)) {
                $this->Flash->success(__('The user has been saved'));
                return $this->redirect(array('action' => 'index'));
            }
            $this->Flash->error(
                __('The user could not be saved. Please, try again.')
            );
        }
    }

    // public function edit($id = null) {
    //     $this->User->id = $id;
    //     // debug($id);
    //     // die();
    //     if (!$this->User->exists()) {
    //         throw new NotFoundException(__('Invalid user'));
    //     }
  
    //     debug($this->request->data); die;
    //     if ($this->request->is('get') || $this->request->is('put')) {

    //         if ($this->User->save($this->request->data)) {
    //             $this->Flash->success(__('The user has been saved'));
    //             return $this->redirect(array('action' => 'index'));
              
    //         }



    //         $this->Flash->error(
    //             __('The user could not be saved. Please, try again.')
    //         );
    //   } else {
    //         $this->request->data = $this->User->findById($id);
    //         unset($this->request->data['User']['password']);
    //     }
    // }

    public function edit($id = null) {

            if (!$id) {
                $this->Session->setFlash('Please provide a user id');
                $this->redirect(array('action'=>'index'));
            }

            $user = $this->User->findById($id);
            if (!$user) {
                $this->Session->setFlash('Invalid User ID Provided');
                $this->redirect(array('action'=>'index'));
            }

            if ($this->request->is('post') || $this->request->is('put')) {
                $this->User->id = $id;
                if ($this->User->save($this->request->data)) {
                    $this->Session->setFlash(__('The user has been updated'));
                    $this->redirect(array('action' => 'edit', $id));
                }else{
                    $this->Session->setFlash(__('Unable to update your user.'));
                }
            }

            if (!$this->request->data) {
                $this->request->data = $user;
            }
    }
//     public function edit($id = null) {
//     if (!$id) {
//         throw new NotFoundException(__('Invalid post'));
//     }

//     $user = $this->User->findById($id);
//     if (!$user) {
//         throw new NotFoundException(__('Invalid post'));
//     }

//     if ($this->request->is('get') || $this->request->is('put')) {
//         $this->user->id = $id;
//         if ($this->user->save($this->request->data)) {
//             die();
//             $this->Flash->success(__('Your post has been updated.'));
//             return $this->redirect(array('action' => 'index'));
//         }
//     }

//     if (!$this->request->data) {
//         $this->request->data = $user;
//     }
// }

    public function delete($id = null) {
        // Prior to 2.5 use
        // $this->request->onlyAllow('post');

        $this->request->allowMethod('get');

        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if ($this->User->delete($id)) {
            $this->Flash->success(__('User deleted'));
            return $this->redirect(array('action' => 'index'));
        }
        $this->Flash->error(__('User was not deleted'));
        return $this->redirect(array('action' => 'index'));
    }

    //    public function delete($id = null) {
    //   die();
    //     if (!$id) {
    //         $this->Session->setFlash('Please provide a user id');
    //         $this->redirect(array('action'=>'index'));
    //     }
        
    //     $this->User->id = $id;
    //     if (!$this->User->exists()) {
    //         $this->Session->setFlash('Invalid user id provided');
    //         $this->redirect(array('action'=>'index'));
    //     }
    //     if ($this->User->saveField('status', 0)) {
    //         $this->Session->setFlash(__('User deleted'));
    //         $this->redirect(array('action' => 'index'));
    //     }
    //     $this->Session->setFlash(__('User was not deleted'));
    //     $this->redirect(array('action' => 'index'));
    // }

}