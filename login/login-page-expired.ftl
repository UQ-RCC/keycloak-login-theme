<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("pageExpiredTitle")}
    <#elseif section = "header">
        ${msg("pageExpiredTitle")}
    <#elseif section = "form">




            <div class="login-form">

                <div class="login-landing-img"></div>

                    <div class="form-inner-content">
                    
                    <div class="form-title-logo"></div>

                    <div>
                        <h1 class="form-title">Oops!</h1>
                        <p class="form-title-subtext">This page has expired.</p>
                    </div>

                    <p class="instruction">
                        ${msg("pageExpiredMsg1")} <a id="loginRestartLink" class="instruction-link" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a>.
                    </p>

                    <p class="instruction">
                        ${msg("pageExpiredMsg2")} <a id="loginContinueLink" class="instruction-link" href="${url.loginAction}">${msg("doClickHere")}</a>.
                    </p>

                    <p class="disclaimer">
                    By signing in, you agree to the Bunya<br>
                    <a class="disclaimer-link" href="https://github.com/UQ-RCC/hpc-docs/blob/main/media/Bunya-access-conditions.png" target="_blank">Bunya Access Conditions</a> &
                    <a class="disclaimer-link" href="https://ppl.app.uq.edu.au/content/6.20.06-acceptable-use-uq-ict-resources target="_blank">UQ Acceptable Use of ICT Resources Policy</a>.
                </p>
                
                </div>

            </div>



    </#if>
</@layout.registrationLayout>