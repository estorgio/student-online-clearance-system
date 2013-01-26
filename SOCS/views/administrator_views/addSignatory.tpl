<!-- Navigation Tabs-->
<ul class="nav nav-tabs">
    <li class="dropdown" >
        <a class="dropdown-toggle"
           data-toggle="dropdown"
           href="#">
            User Accounts
            <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
            <li><a href='../administrator/index.php?account_type=Student'>Student</a></li>
            <li><a href='../administrator/index.php?account_type=Signatory'>Signatory</a></li>
        </ul>
    </li>
    <li  class="active"><a href='../administrator/signatory_list_manager.php'>Signatories</a></li>
    <li><a href='../administrator/department_list_manager.php'>Departments</a></li>
</ul>

<!-- Back Button-->
<button class="pull-right btn" onclick="window.location.href='signatory_list_manager.php'">Back</button>

<!-- Adding Form-->
<form action="signatory_list_manager.php?action=add_signatory" method='post' class="form-horizontal">
    <legend>Add Signatory:</legend>
    <div class="control-group">
        <label class="control-label">Signatory Name: </label>
        <div class="controls">
            <input style="width: 400px;" class="input-xlarge" type ='text' name='sign_name'>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Description: </label>
        <div class="controls">
            <textarea style="width: 400px;" class="input-xlarge" name='sign_description' rows="5" cols="50"></textarea>
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <input class="btn btn-primary" type='Submit' value='Save'>
        </div>
    </div>
</form> 