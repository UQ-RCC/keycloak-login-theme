<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))?no_esc}
    <#elseif section = "form">
        <#if social.providers??>
            <p class="para">${msg("selectAlternative")}</p>
            <div id="social-providers">
                <#list social.providers as p>
                <input class="social-link-style" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
                </#list>
            </div>
        </#if>
        <#if realm.password>
        <button type="button" class="collapsible">Limited Login</button>
        <div class="collapsible-content">
            <p class="para">This login will not work for most users. Please use AAF login.</p>

            <form id="kc-form-login" class="login-form" action="${url.loginAction}" method="post">

                <div class="login-landing-img"></div>

                    <div class="form-inner-content">

                    <div class="form-title-logo"></div>

                    <div>
                        <h1 class="form-title">Sign In to UQ Research Computing Centre</h1>
                        <!-- <p class="form-title-subtext">Welcome back. Sign in with your credentials.</p> -->
                    </div>


                    <p class="message-container js-message-container"></p>

                    <div class="form-group">
                        <label for="username" class="form-label"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                            <#if usernameEditDisabled??>
                                <input 
                                    id="username"
                                    placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                                    class="form-control" 
                                    name="username" 
                                    value="${(login.username!'')}" 
                                    type="text" 
                                    disabled 
                                />
                            <#else>
                                <input 
                                    id="username"
                                    placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                                    class="form-control" 
                                    name="username" 
                                    value="${(login.username!'')}" 
                                    type="text" 
                                    autofocus 
                                    autocomplete="off" />
                            </#if>
                    </div>

                    <div class="form-group">
                        <label for="password" class="form-label">${msg("password")}</label>
                        <input id="password" placeholder="${msg("password")}" class="form-control" name="password" type="password" autocomplete="off" />
                    </div>

                    <div id="form-options" class="form-options">
                        <#if realm.rememberMe && !usernameEditDisabled??>
                            <div class="checkbox form-group">
                                <div class="multiple-choice">
                                    <#if login.rememberMe??>

                                    <label class="checkbox-container" for="rememberMe">${msg("rememberMe")}
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked>
                                        <span class="checkmark"></span>
                                    </label>

                                    <#else>

                                    <label class="checkbox-container" for="rememberMe">${msg("rememberMe")}
                                        <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3">
                                        <span class="checkmark"></span>
                                    </label>

                                    </#if>
                                </div>
                            </div>
                        </#if>

                        <#if realm.resetPasswordAllowed>
                            <p><a class="form-forgot-password" href="${url.loginResetCredentialsUrl}">Forgot password?</a></p>
                        </#if>
                    </div>

                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!} form-group">
                        <input class="button ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="Sign in"/>
                    </div>
                
                </div>

            </form>
        </div>
        </#if>

    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <h2 class="heading-medium">${msg("noAccount")}</h2>
                <p><a href="${url.registrationUrl}">${msg("registerLink")}</a></p>
            </div>
        </#if>
        <p class="disclaimer">
            By signing in, you agree to the Bunya<br>
            <a class="disclaimer-link" href="https://github.com/UQ-RCC/hpc-docs/blob/main/media/Bunya-access-conditions.png" target="_blank">Bunya Access Conditions</a> &
            <a class="disclaimer-link" href="https://ppl.app.uq.edu.au/content/6.20.06-acceptable-use-uq-ict-resources target="_blank">UQ Acceptable Use of ICT Resources Policy</a>.
        </p>
    </#if>
</@layout.registrationLayout>
