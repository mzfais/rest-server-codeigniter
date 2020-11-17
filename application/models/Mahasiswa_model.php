<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *
 * Model Mahasiswa_model
 *
 * This Model for ...
 * 
 * @package		CodeIgniter
 * @category	Model
 * @author    Ahmad Faisol <mzfais@lecturer.itn.ac.id>
 * @link      https://github.com/mzfais/
 * @param     ...
 * @return    ...
 *
 */

class Mahasiswa_model extends CI_Model
{

  // ------------------------------------------------------------------------

  public function __construct()
  {
    parent::__construct();
  }

  public function get($id = null, $limit = 5, $offset = 0)
  {
    if ($id === null) {
      return $this->db->get('mahasiswa', $limit, $offset)->result();
    } else {
      return $this->db->get_where('mahasiswa', ['nim' => $id])->result_array();
    }
  }

  public function count()
  {
    return $this->db->get('mahasiswa')->num_rows();
  }

  public function add($data)
  {
    try {
      $this->db->insert('mahasiswa', $data);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi kesalahan: ' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }

  public function update($id, $data)
  {
    try {
      $this->db->update('mahasiswa', $data, ['nim' => $id]);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi kesalahan: ' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }

  public function delete($id)
  {
    try {
      $this->db->delete('mahasiswa', ['nim' => $id]);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi kesalahan: ' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }
}

/* End of file Mahasiswa_model.php */
/* Location: ./application/models/Mahasiswa_model.php */