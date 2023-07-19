<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 1.0.1

    </div>
    <strong>Copyright © 2020-2021 <a>
            <span id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.</strong> All rights
    reserved.

</footer>


<div class="control-sidebar-bg"></div>

</div>

<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- Select2 -->
<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
<script>
    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2();
        //Datemask dd/mm/yyyy
        $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
        //Datemask2 mm/dd/yyyy
        $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
        //Date range picker
        $('#reservation').daterangepicker()
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
        $('#daterange-btn').daterangepicker(
            {
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function (start, end) {
                $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
            }
        )
        //Date picker
        $('#datepicker').datepicker({
            autoclose: true
        })
        //Money Euro
        $('[data-mask]').inputmask()

        //iCheck for checkbox and radio inputs
        $('span[type="checkbox"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        })





    })
</script>

<script type="text/javascript">
    //<![CDATA[
    var Page_Validators = new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator11"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator9"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator15"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator16"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"), document.getElementById("ContentPlaceHolder1_Reg1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator13"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator10"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator14"));
//]]>
</script>

<script type="text/javascript">
    //<![CDATA[
    var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
    ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtDOJ";
    ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter Registration Date";
    ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
    ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtMemberName";
    ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Applicant Name";
    ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
    ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtAge";
    ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Age";
    ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
    ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtAddress";
    ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Address";
    ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
    ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtDistrict";
    ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter District";
    ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator11 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator11"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator11");
    ContentPlaceHolder1_RequiredFieldValidator11.controltovalidate = "ContentPlaceHolder1_ddlState";
    ContentPlaceHolder1_RequiredFieldValidator11.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator11.errormessage = "Select State";
    ContentPlaceHolder1_RequiredFieldValidator11.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator11.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator11.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator11.initialvalue = "--Select--";
    var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
    ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtPin";
    ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Enter PIN";
    ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator9 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator9"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator9");
    ContentPlaceHolder1_RequiredFieldValidator9.controltovalidate = "ContentPlaceHolder1_txtAadharNo";
    ContentPlaceHolder1_RequiredFieldValidator9.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator9.errormessage = "Enter Aadhar No";
    ContentPlaceHolder1_RequiredFieldValidator9.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator9.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator9.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator9.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator15 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator15"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator15");
    ContentPlaceHolder1_RequiredFieldValidator15.controltovalidate = "ContentPlaceHolder1_txtPAN";
    ContentPlaceHolder1_RequiredFieldValidator15.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator15.errormessage = "Enter PAN No";
    ContentPlaceHolder1_RequiredFieldValidator15.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator15.validationGroup = "P";
    ContentPlaceHolder1_RequiredFieldValidator15.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator15.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator16 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator16"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator16");
    ContentPlaceHolder1_RequiredFieldValidator16.controltovalidate = "ContentPlaceHolder1_txtVoterNo";
    ContentPlaceHolder1_RequiredFieldValidator16.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator16.errormessage = "Enter Voter No";
    ContentPlaceHolder1_RequiredFieldValidator16.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator16.validationGroup = "K";
    ContentPlaceHolder1_RequiredFieldValidator16.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator16.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
    ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtPhoneno";
    ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Phone No";
    ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
    var ContentPlaceHolder1_Reg1 = document.all ? document.all["ContentPlaceHolder1_Reg1"] : document.getElementById("ContentPlaceHolder1_Reg1");
    ContentPlaceHolder1_Reg1.controltovalidate = "ContentPlaceHolder1_txtEmailid";
    ContentPlaceHolder1_Reg1.focusOnError = "t";
    ContentPlaceHolder1_Reg1.errormessage = "Invalid Email ID";
    ContentPlaceHolder1_Reg1.display = "Dynamic";
    ContentPlaceHolder1_Reg1.validationGroup = "A";
    ContentPlaceHolder1_Reg1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ContentPlaceHolder1_Reg1.validationexpression = "\\w+([-+.\']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
    var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
    ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtNomineeName";
    ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter Nominee Name";
    ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
    ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtMemberJoiningFess";
    ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Enter Member Fees (if any)";
    ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator13 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator13"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator13");
    ContentPlaceHolder1_RequiredFieldValidator13.controltovalidate = "ContentPlaceHolder1_ddlShareAllotedfrm";
    ContentPlaceHolder1_RequiredFieldValidator13.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator13.errormessage = "Select Alloted From";
    ContentPlaceHolder1_RequiredFieldValidator13.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator13.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator13.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator13.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator10 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator10"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator10");
    ContentPlaceHolder1_RequiredFieldValidator10.controltovalidate = "ContentPlaceHolder1_txtNoOfShared";
    ContentPlaceHolder1_RequiredFieldValidator10.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator10.errormessage = "Enter No of Share";
    ContentPlaceHolder1_RequiredFieldValidator10.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator10.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator10.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator10.initialvalue = "";
    var ContentPlaceHolder1_RequiredFieldValidator14 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator14"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator14");
    ContentPlaceHolder1_RequiredFieldValidator14.controltovalidate = "ContentPlaceHolder1_txtEnterShareAmount";
    ContentPlaceHolder1_RequiredFieldValidator14.focusOnError = "t";
    ContentPlaceHolder1_RequiredFieldValidator14.errormessage = "Enter Share Amount";
    ContentPlaceHolder1_RequiredFieldValidator14.display = "Dynamic";
    ContentPlaceHolder1_RequiredFieldValidator14.validationGroup = "A";
    ContentPlaceHolder1_RequiredFieldValidator14.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ContentPlaceHolder1_RequiredFieldValidator14.initialvalue = "";
//]]>
</script>


<script type="text/javascript">
    //<![CDATA[

    var Page_ValidationActive = false;
    if (typeof (ValidatorOnLoad) == "function") {
        ValidatorOnLoad();
    }

    function ValidatorOnSubmit() {
        if (Page_ValidationActive) {
            return ValidatorCommonOnSubmit();
        }
        else {
            return true;
        }
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator9').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator9'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator15').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator15'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator16').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator16'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
    }

    document.getElementById('ContentPlaceHolder1_Reg1').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_Reg1'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator13').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator13'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10'));
    }

    document.getElementById('ContentPlaceHolder1_RequiredFieldValidator14').dispose = function () {
        Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator14'));
    }
//]]>
</script>
</form>
</body>

</html>