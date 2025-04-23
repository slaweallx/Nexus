<!-- BEGIN: MAIN -->
<div class="block message-block">
    <h2 class="warning">{MESSAGE_TITLE}</h2>
    <div class="message-content">
        {MESSAGE_BODY}
        
        <!-- BEGIN: MESSAGE_CONFIRM -->
        <div class="confirm-actions">
            <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="button confirmButton">
                <i class="fas fa-check"></i> {PHP.L.Yes}
            </a>
            <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="button secondary confirmButton">
                <i class="fas fa-times"></i> {PHP.L.No}
            </a>
        </div>
        <!-- END: MESSAGE_CONFIRM -->
    </div>
</div>
<!-- END: MAIN -->