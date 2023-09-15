<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("errorTitle")}
    <#elseif section = "header">
        ${msg("errorTitleHtml")?no_esc}
    <#elseif section = "back">
        <#if client?? && client.baseUrl?has_content>
            <a class="link-back" id="backToApplication" href="${client.baseUrl}">${msg("backToApplication")}</a>
        </#if>
    <#elseif section = "form">

                <div class="login-form">

                <div class="login-landing-img"></div>

                    <div class="form-inner-content">
                    
                    <div class="form-title-logo"></div>

                    <div>
                        <h1 class="form-title">Head Office</h1>
                    </div>

                    <p class="instruction">
                        ${message.summary}
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