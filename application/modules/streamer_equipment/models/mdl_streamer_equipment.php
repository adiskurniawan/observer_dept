<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');


class Mdl_streamer_equipment extends Response_Model {

    public $table               = 'streamer_equipment';
    public $primary_key         = 'streamer_equipment.client_id';
    public $date_created_field  = 'client_date_created';
    public $date_modified_field = 'client_date_modified';

    public function default_select()
    {
        $this->db->select('SQL_CALC_FOUND_ROWS client_custom.*, streamer_equipment.*', FALSE);
    }

    public function default_join()
    {
        $this->db->join('client_custom', 'client_custom.client_id = streamer_equipment.client_id', 'left');
    }

    public function default_order_by()
    {
        $this->db->order_by('streamer_equipment.client_name');
    }

    public function validation_rules()
    {
        return array(
            'client_name'      => array(
                'field' => 'client_name',
                'label' => lang('client_name'),
                'rules' => 'required'
            ),
            'client_active'    => array(
                'field' => 'client_active'
            ),
            'client_address_1' => array(
                'field' => 'client_address_1'
            ),
            'client_address_2' => array(
                'field' => 'client_address_2'
            ),
            'client_city'      => array(
                'field' => 'client_city'
            ),
            'client_state'     => array(
                'field' => 'client_state'
            ),
            'client_zip'       => array(
                'field' => 'client_zip'
            ),
            'client_country'   => array(
                'field' => 'client_country'
            ),
            'client_phone'     => array(
                'field' => 'client_phone'
            ),
            'client_fax'       => array(
                'field' => 'client_fax'
            ),
            'client_mobile'    => array(
                'field' => 'client_mobile'
            ),
            'client_email'     => array(
                'field' => 'client_email'
            ),
            'client_web'       => array(
                'field' => 'client_web'
            )
        );
    }

    public function db_array()
    {
        $db_array = parent::db_array();

        if (!isset($db_array['client_active']))
        {
            $db_array['client_active'] = 0;
        }

        return $db_array;
    }

    public function delete($id)
    {
        parent::delete($id);

        $this->load->helper('orphan');
        delete_orphans();
    }

    /**
     * Returns client_id of existing or new record 
     */
    public function client_lookup($client_name)
    {
        $client = $this->mdl_streamer_equipment->where('client_name', $client_name)->get();

        if ($client->num_rows())
        {
            $client_id = $client->row()->client_id;
        }
        else
        {
            $db_array = array(
                'client_name' => $client_name
            );

            $client_id = parent::save(NULL, $db_array);
        }

        return $client_id;
    }

    public function with_total()
    {
        $this->filter_select("IFNULL((SELECT SUM(invoice_total) FROM invoice_amounts WHERE invoice_id IN (SELECT invoice_id FROM invoices WHERE invoices.client_id = streamer_equipment.client_id)), 0) AS client_invoice_total", FALSE);
        return $this;
    }

    public function with_total_paid()
    {
        $this->filter_select("IFNULL((SELECT SUM(invoice_paid) FROM invoice_amounts WHERE invoice_id IN (SELECT invoice_id FROM invoices WHERE invoices.client_id = streamer_equipment.client_id)), 0) AS client_invoice_paid", FALSE);
        return $this;
    }

    public function with_total_balance()
    {
        $this->filter_select("IFNULL((SELECT SUM(invoice_balance) FROM invoice_amounts WHERE invoice_id IN (SELECT invoice_id FROM invoices WHERE invoices.client_id = streamer_equipment.client_id)), 0) AS client_invoice_balance", FALSE);
        return $this;
    }

    public function is_active()
    {
        $this->filter_where('client_active', 1);
        return $this;
    }

    public function is_inactive()
    {
        $this->filter_where('client_active', 0);
        return $this;
    }

}

?>