
<div style="float:right;">
     <a href='../settings.php'>My Account</a>&nbsp;&nbsp;<a href='../index.php?action=logout'>Logout</a></div>

<center><div style="width:100px;height:100px;border:1px solid gray;"><img></img></div></center>
     
<center><div style="width:550px;"><Strong><h3>{$user_info}</h3></Strong><br>
        <Strong>Students Online  Clearance System</Strong><br><hr></div></center>
        
     
<center><div style="width:550px;">
     <a href='../index.php?action=useraccounts'>User Accounts</a>&nbsp;&nbsp;<a href='../index.php?action=signatories'>Signatories</a>
&nbsp;&nbsp;<a href='../index.php?action=departments'>Departments</a></div></center>           
        <br> 
   <form>
        <center><input type="text" style="width:500px;"placeholder="Search.."></input><input type="button" value="Go ->"></input><br>
        <a href = "#">Checked All</a> / <a href = "#">Unchecked All</a> <input type="button" value="Add User Account"></input><br>
        </center>
      
   </form>
   
        <center>       
        <table border="1 solid gray">     
            <tr>
                <th style="width:20px;"> /\</th>
                <th style="width:100px;"> Pic</th>
                <th style="width:300px;"> User</th>  
                <th style="width:100px;"> Type</th>  
            </tr>
        </table>  
        
        <div style="overflow:auto;width:550px;height:200px;border:1px;" >
        <table border="1 solid gray">
            <tr>
                {foreach $myName as $name}
                    <td style="width:20px;"><input type="checkbox"></input></td>
                    <td style="width:100px;"><p>weaw</p></td>
                    <td style="width:300px;"><p>{$name}</p></td>
                    <td style="width:100px;"><p>eeee</p></td>
                {/foreach}
            </tr>        
        </table>
          
        </div>      
        
            <a href = "#">Delete Selected</a>
        Jump to:  <select>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
         </select>
        </center>
     
             
      
        
</div>