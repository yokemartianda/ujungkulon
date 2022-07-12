<?php


class Groups extends My_Controller
{

    public function __construct()
    {
        parent::__construct();

        //Access Control
        if(!$this->session->userdata('logged_in'))
        {
            redirect('admin/login');
        }
    }


    /*
     * Users Main Index
     */
    public function index()
    {
        //Get Categories
        $data['groups'] = $this->user_model->get_groups();

        //Views
        $data['main_content'] = 'admin/groups/index';
        $this->load->view('admin/layouts/main', $data);
    }


    /*
     * Add Group
     */
    public function add()
    {
        //Validation Rules
        $this->form_validation->set_rules('name','Name','trim|required');

        if($this->form_validation->run() == FALSE)
        {
            //Views
            $data['main_content'] = 'admin/groups/add';
            $this->load->view('admin/layouts/main', $data);
        }
        else
            {
                //Create Data Array
                $data = array(
                    'name' => $this->input->post('name')
                );

                //Table Insert
                $this->user_model->insert_group($data);

                //Create Message
                $this->session->set_flashdata('group_saved', 'User group has been saved');


                //Redirect to pages
                redirect('admin/groups');
            }
    }


   /*
    * Edit Group
    *
    * @param - $id
    */
    public function edit($id)
    {
        //Validation Rules
        $this->form_validation->set_rules('name','Name','trim|required');

        if($this->form_validation->run() == FALSE)
        {
            $data['group'] = $this->user_model->get_group($id);

            //Views
            $data['main_content'] = 'admin/groups/edit';
            $this->load->view('admin/layouts/main', $data);
        }
        else
            {
                //Create Data Array
                $data = array(
                    'name' => $this->input->post('name')
                );

                //Table Update
                $this->user_model->update_group($data, $id);

                //Create Message
                $this->session->set_flashdata('group_saved', 'User group has been saved');

                //Redirect to pages
                redirect('admin/groups');
            }
    }


    /*
     * Delete Group
     *
     * @param - (int) $id
     */
    public function delete($id)
    {
        $this->user_model->delete_group($id);

        //Create Message
        $this->session->set_flashdata('group_deleted', 'User group has been deleted');

        //Redirect To Index
        redirect('admin/groups');
    }

}