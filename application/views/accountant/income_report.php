<style>
    table.dataTable {
        border: 1px solid #d5d5d5;
    }
    table.dataTable thead th, table.dataTable thead th div {
        height: 45px !important;
    }
    #list label {
        display: inline-block;
        margin-right: 10px;
        margin-bottom: 0;
        min-width: 105px;
    }
    #list .control-group {
        margin-bottom: 0;
    }
    #list .controls, #list .controls select, #list .controls input {
        display: inline-block;
        margin-bottom: 0;
    }
</style>
<script src="<?php echo base_url();?>template/js/tableExport.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>template/js/jquery.base64.js" type="text/javascript"></script>
<div class="box box-border">
    <div class="box-header">
        <?php $grand_total = 0; ?>

        <!------CONTROL TABS START------->
        <ul class="nav nav-tabs nav-tabs-left">
            <li class="active">
                <a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
                    <?php echo translate('income Report'); ?>
                </a></li>
        </ul>
        <!------CONTROL TABS END------->

    </div>
    
    <div class="box-content padded textarea-problem clearfix">
        <!----TABLE LISTING STARTS--->
        <div class="tab-pane" id="list">
            <center>
                <?php echo form_open('admin/income_report'); ?>
                <table border="0" cellspacing="0" cellpadding="0" class="table table-normal box">                   
                    <tr>
                        <td>
                           <div class="control-group">
                                <label class="control-label"><?php echo translate('income By'); ?></label>
                                <div class="controls">
                                    <select name="income_by" class="incomeBy">
                                        <option value="">Please select</option>
                                        <?php 
                                            foreach($incomes as $key => $value) { ?>
                                                <option value="<?php echo $value['income_by']; ?>"  <?php if($this->session->userdata('income_by') == $value['income_by']) echo "selected"; ?>>
                                                    <?php echo $value['income_by']; ?>
                                                </option>
                                           <?php } ?>
                                    </select>
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('income_id'); ?></label>
                                <div class="controls">
                                    <select name="income_id" class="incomeID">
                                        <option value="">Please select</option>
                                        <?php 
                                        foreach($incomes as $key => $value) { ?>
                                        <option value="<?php echo $value['income_id']; ?>" <?php if($this->session->userdata('income_id') == $value['income_id']) echo "selected"; ?>><?php echo $value['income_id']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <div class="control-group">
                                <label class="control-label"><?php echo translate('invoice_id'); ?></label>
                                <div class="controls">
                                    <select name="invoice_id" class="invoiceID">
                                        <option value="">Please select</option>
                                        <?php 
                                            foreach($incomes as $key => $value) { ?>
                                                <option value="<?php echo $value['invoice_id']; ?>" <?php if($this->session->userdata('invoice_id') == $value['invoice_id']) echo "selected"; ?>><?php echo $value['invoice_id']; ?></option>
                                           <?php } ?>
                                    </select>
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('income_name'); ?></label>
                                <div class="controls">
                                    <select name="income_name" class="incomeName">
                                        <option value="">Please select</option>
                                        <?php 
                                            foreach($incomes as $key => $value) { ?>
                                                <option value="<?php echo $value['income_name']; ?>" <?php if($this->session->userdata('income_name') == $value['income_name']) echo "selected"; ?>><?php echo $value['income_name']; ?></option>
                                           <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <div class="control-group">
                                <label class="control-label"><?php echo translate('category'); ?></label>
                                <div class="controls">
                                    <select name="category" class="category">
                                        <option value="">Please select</option>
                                        <?php 
                                            foreach($incomes as $key => $value) { ?>
                                                <option value="<?php echo $value['category']; ?>" <?php if($this->session->userdata('category') == $value['category']) echo "selected"; ?>><?php echo $value['category']; ?></option>
                                           <?php } ?>
                                    </select>
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('material_name'); ?></label>
                                <div class="controls">
                                    <select name="material_name" class="material_name">
                                        <option value="">Please select</option>
                                        <?php 
                                            foreach($incomes as $key => $value) { ?>
                                                <option value="<?php echo $value['material_name']; ?>" <?php if($this->session->userdata('material_name') == $value['material_name']) echo "selected"; ?>><?php echo $value['material_name']; ?></option>
                                           <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('payment_from'); ?></label>
                                <div class="controls">
                                    <select name="payment_from" class="paymentTo">
                                        <option value="">Please select</option>
                                        <?php 
                                            foreach($incomes as $key => $value) { ?>
                                                <option value="<?php echo $value['payment_from']; ?>" <?php if($this->session->userdata('payment_from') == $value['payment_from']) echo "selected"; ?>><?php echo $value['payment_from']; ?></option>
                                           <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </td>
                        <td>
                           <div class="control-group">
                                <label class="control-label"><?php echo translate('payment_method'); ?></label>
                                <div class="controls">
                                    <select name="payment_method" class="paymentMethod">
                                        <option value="">Please select</option>
                                        <option value="cash" <?php if($this->session->userdata('payment_method') == 'cash') echo "selected"; ?>>cash</option>
                                        <option value="Bank" <?php if($this->session->userdata('payment_method') == 'Bank') echo "selected"; ?>>Bank</option>
                                        <option value="Bank Check" <?php if($this->session->userdata('payment_method') == 'Bank Check') echo "selected"; ?>>Bank Check</option>
                                    </select>
                                </div>
                            </div> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('date from'); ?></label>
                                <div class="controls">
                                    <input style="width: 220px;" type="text" class="datepicker fill-up" name="income_date_from" value="<?php echo $this->session->userdata('income_date_from'); ?>"/>
                                </div>
                            </div>
                        </td>
                        <td>    
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('date to'); ?></label>
                                <div class="controls">
                                    <input style="width: 220px;" type="text" class="datepicker fill-up" name="income_date_to" value="<?php echo $this->session->userdata('income_date_to'); ?>"/>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="hidden" name="operation" value="selection" />
                            <input type="submit" value="<?php echo translate('Show Report'); ?>" class="btn btn-normal btn-gray" />
                        </td>
                    </tr>
                </table>
                </form>
            </center>


            <br /><br />


            <?php                
                $number_of_row = count($income_report_data);
                if ($number_of_row >= 1) {
            ?>
                <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive" id="xincomereport">
                    <thead>
                        <tr>
                            <th><div>Sl No.</div></th>                            
                            <th><div><?php echo translate('income By'); ?></div></th>
                            <th><div><?php echo translate('income ID'); ?></div></th>
                            <th><div><?php echo translate('Invoice ID'); ?></div></th>
                            <th><div><?php echo translate('Title/income Name'); ?></div></th>
                            <th><div><?php echo translate('Description'); ?></div></th>
                            <th><div><?php echo translate('Category'); ?></div></th>
                            <th><div><?php echo translate('Material Name'); ?></div></th>
                            <th><div><?php echo translate('Uploaded Document'); ?></div></th>
                            <th><div><?php echo translate('Payment From'); ?></div></th>
                            <th><div><?php echo translate('Payment Menthod'); ?></div></th>
                            <th><div><?php echo translate('Date'); ?></div></th>
                            <th><div><?php echo translate('Amount'); ?></div></th>
<!--                            <th><div><?php echo translate('Option'); ?></div></th>-->
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $count = 1;
                            foreach ($income_report_data as $row): ?>
                            <tr>
                                <td><?php echo $count; ?></td>
                                <td><?php echo $row['income_by']; ?></td>
                                <td><?php echo $row['income_id']; ?></td>
                                <td><?php echo $row['invoice_id']; ?></td>
                                <td><?php echo $row['income_name']; ?></td>
                                <td><?php echo $row['description']; ?></td>
                                <td><?php echo $row['category']; ?></td>
                                <td><?php echo $row['material_name']; ?></td>
                                <td><?php echo $row['document_name']; ?></td>
                                <td><?php echo $row['payment_from']; ?></td>
                                <td><?php echo $row['payment_method']; ?></td>
                                <td><?php echo date('j F, Y', $row['income_timestamp']); ?></td>                                
                                <td>
                                    <?php 
                                        echo $row['amount'];
                                        $grand_total+=$row['amount'];
                                    ?>
                                </td>
<!--                                <td align="center">
                                    <a data-toggle="modal" href="#modal-form" onclick="modal('view_invoice',<?php echo $row['invoice_id']; ?>)" class="btn btn-default btn-small">
                                        <i class="icon-credit-card"></i> <?php echo translate('view_detail'); ?>
                                    </a>
                                </td>-->
                            </tr>
                            <tr>
                             <td colspan="13" align="right"><h5>Grand Total :<?php echo $grand_total; ?></h5></td>
                            </tr>
                        <?php $count++; endforeach; ?>

                    </tbody>
                </table>
                <br />            
                <div>
                    <a data-toggle="modal" href="#" onClick ="$('#xincomereport').tableExport({type:'excel',escape:'false'});" class="btn btn-blue">
                        <i class="icon-download"></i> <?php echo translate('download excel'); ?>
                    </a>
                    <a data-toggle="modal" href="#" onClick ="$('#xincomereport').tableExport({type:'doc',escape:'false'});" class="btn btn-blue">
                        <i class="icon-download"></i> <?php echo translate('download word'); ?>
                    </a>
                </div>

            <?php }  ?>
        </div>
        <!----TABLE LISTING ENDS--->

    </div>
</div>
<?php  die; ?>