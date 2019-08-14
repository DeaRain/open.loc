<div class="container">
    <div class="subscribe-container">
        <div class="subscribe-container__header">
            Підпишись на новини та акції
        </div>
        <div class="subscribe-container__text-box">
            <form id="lt_newsletter_form">
                <div class="form-group">
                    <input type="email" class="form-control" required name="lt_newsletter_email"
                           id="lt_newsletter_email" placeholder="Введіть email для підписки">
                </div>
                <button type="submit" class="btn subscribe-container__submit-bnt"><span
                            class="icon-right-chevron-1_3"></span></button>
            </form>
        </div>
    </div>
</div>
<?php //echo $action; die;?>
<script type="text/javascript">
    $(document).ready(function ($) {
        $('#lt_newsletter_form').submit(function (e) {
            e.preventDefault();
            $.ajax({
                type: 'post',
                url: '<?php echo $action; ?>',
                data: $("#lt_newsletter_form").serialize(),
                dataType: 'json',
                beforeSend: function () {
                    //$('.btn-newsletter').attr('disabled', true).button('loading');
                },
                complete: function () {
                    //$('.btn-newsletter').attr('disabled', false).button('reset');
                },
                success: function (json) {
                    $('.alert, .alert-danger').remove();
                    $('.form-group').removeClass('has-error');

                    if (json.error) {
                        //alert(json.error);
                        // $('#lt_newsletter_form .subscribe__form #lt_newsletter_email').after('<div class="alert alert-danger newsletter-msg">' + json.error + '</div>');
                        $('#lt_newsletter_form').after('<div id="lt_newsletter_alert" class="my-alert">' + json.error + '</div>');
                    } else {
                        // alert(json.success);
                        $('#lt_newsletter_form').after('<div id="lt_newsletter_alert" class="my-alert">' + json.success + '</div>');
                        $('#lt_newsletter_email').val('');
                    }

                    $('#lt_newsletter_alert').click(function () {
                        $('#lt_newsletter_alert').toggle(100);
                    });
                }

            });
            return false;
        });
    });
</script>
