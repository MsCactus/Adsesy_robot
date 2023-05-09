*** Variables ***
${txtbox_OTP}           //input[@placeholder='OTP']
${btn_resendOTP}        //button[@class="resent pb-6 text-white"]
${btn_Send}             //div[@class='btn_login rounded-full']

# ruu.kr
${txtbox_ibputMail}     //form[@name="actionForm"]/input[@type="text"]
${mailList}             //span[@id="mailList"]
${getListMail}          //div[@id="mail"]/table/tbody/tr/td
${otp_ruu}              //div[contains(text(),'Mã xác thực của bạn')]/following-sibling::div
