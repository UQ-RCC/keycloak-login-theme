
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">

        <form id="kc-passwd-update-form"" class="login-form" action="${url.loginAction}" method="post">

                <div class="login-reset-img"></div>

                <div class="form-inner-content">
                    
                    <div class="form-title-logo"></div>

                    <div>
                        <h1 class="form-title">New Password</h1>
                        <p class="form-title-subtext">
                            Enter a new password below and then confirm it by entering it again.
                            Click on the ‘Save’ button to submit your new password.
                        </p>
                    </div>

                    <p class="message-container js-message-container"></p>

                    <div class="form-group">
                        <label for="password-new" class="form-label">${msg("passwordNew")}</label>
                        <input 
                            id="password-new"
                            placeholder="${msg("passwordNew")}"
                            class="form-control" 
                            name="password-new" 
                            type="password" 
                            autofocus 
                            autocomplete="off" 
                        />
                    </div>

                    <div class="form-group">
                        <label for="password-confirm" class="form-label">${msg("passwordConfirm")}</label>
                        <input id="password-confirm" placeholder="${msg("passwordNewConfirm")}" class="form-control" name="password-confirm" type="password" autocomplete="off" />
                    </div>


                    <div id="kc-form-buttons" class="form-group">
                        <input class="button button-update-password" name="login" id="kc-login" type="submit" value="Save"/>
                    </div>

                    <p class="disclaimer">
                    By signing in, you agree to the Bunya<br>
                    <a class="disclaimer-link" href="https://github.com/UQ-RCC/hpc-docs/blob/main/media/Bunya-access-conditions.png" target="_blank">Bunya Access Conditions</a> &
                    <a class="disclaimer-link" href="https://ppl.app.uq.edu.au/content/6.20.06-acceptable-use-uq-ict-resources target="_blank">UQ Acceptable Use of ICT Resources Policy</a>.
                </p>
                
                </div>

            </form>

    </#if>
</@layout.registrationLayout>
