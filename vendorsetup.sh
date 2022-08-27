rm -rf hardware/qcom-caf/sm8150/display
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/audio
git clone https://github.com/ArrowOS/android_hardware_qcom_display.git -b arrow-12.1-caf-sm8150 hardware/qcom-caf/sm8150/display
git clone https://github.com/ArrowOS/android_hardware_qcom_audio.git -b arrow-12.1-caf-sm8150 hardware/qcom-caf/sm8150/audio
git clone https://github.com/ArrowOS/android_hardware_qcom_media.git -b arrow-12.1-caf-sm8150 hardware/qcom-caf/sm8150/media
