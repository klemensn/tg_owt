add_library(libsdkmacos OBJECT)
init_target(libsdkmacos)
add_library(tg_owt::libsdkmacos ALIAS libsdkmacos)

set(libsdkmacos_loc ${webrtc_loc}/sdk/objc)

target_link_libraries(libsdkmacos
PRIVATE
    tg_owt::libwebrtcbuild
)

nice_target_sources(libsdkmacos ${libsdkmacos_loc}
PRIVATE
    api/video_frame_buffer/RTCNativeI420Buffer+Private.h
    api/video_frame_buffer/RTCNativeI420Buffer.h
    api/video_frame_buffer/RTCNativeI420Buffer.mm
    api/video_frame_buffer/RTCNativeMutableI420Buffer.h
    api/video_frame_buffer/RTCNativeMutableI420Buffer.mm
    api/video_codec/RTCVideoCodecConstants.h
    api/video_codec/RTCVideoCodecConstants.mm
    api/video_codec/RTCVideoDecoderVP8.h
    api/video_codec/RTCVideoDecoderVP8.mm
    api/video_codec/RTCVideoEncoderVP8.h
    api/video_codec/RTCVideoEncoderVP8.mm
    api/video_codec/RTCVideoDecoderVP9.h
    api/video_codec/RTCVideoDecoderVP9.mm
    api/video_codec/RTCVideoEncoderVP9.h
    api/video_codec/RTCVideoEncoderVP9.mm
    api/video_codec/RTCWrappedNativeVideoDecoder.h
    api/video_codec/RTCWrappedNativeVideoDecoder.mm
    api/video_codec/RTCWrappedNativeVideoEncoder.h
    api/video_codec/RTCWrappedNativeVideoEncoder.mm
    components/video_frame_buffer/RTCCVPixelBuffer.h
    components/video_frame_buffer/RTCCVPixelBuffer.mm
    components/video_codec/RTCCodecSpecificInfoH264+Private.h
    components/video_codec/RTCCodecSpecificInfoH264.h
    components/video_codec/RTCCodecSpecificInfoH264.mm
    components/video_codec/RTCH264ProfileLevelId.h
    components/video_codec/RTCH264ProfileLevelId.mm
    components/video_codec/RTCCodecSpecificInfoH265.h
    components/video_codec/RTCCodecSpecificInfoH265.mm
    components/video_codec/RTCH265ProfileLevelId.h
    components/video_codec/RTCH265ProfileLevelId.mm
    components/video_codec/RTCDefaultVideoDecoderFactory.h
    components/video_codec/RTCDefaultVideoDecoderFactory.m
    components/video_codec/RTCDefaultVideoEncoderFactory.h
    components/video_codec/RTCDefaultVideoEncoderFactory.m
    components/video_codec/RTCVideoDecoderFactoryH264.h
    components/video_codec/RTCVideoDecoderFactoryH264.m
    components/video_codec/RTCVideoDecoderH264.h
    components/video_codec/RTCVideoDecoderH264.mm
    components/video_codec/RTCVideoEncoderFactoryH264.h
    components/video_codec/RTCVideoEncoderFactoryH264.m
    components/video_codec/RTCVideoEncoderH264.h
    components/video_codec/RTCVideoEncoderH264.mm
    components/video_codec/RTCVideoDecoderFactoryH265.h
    components/video_codec/RTCVideoDecoderFactoryH265.m
    components/video_codec/RTCVideoDecoderH265.h
    components/video_codec/RTCVideoDecoderH265.mm
    components/video_codec/RTCVideoEncoderFactoryH265.h
    components/video_codec/RTCVideoEncoderFactoryH265.m
    components/video_codec/RTCVideoEncoderH265.h
    components/video_codec/RTCVideoEncoderH265.mm
    components/video_codec/helpers.cc
    components/video_codec/helpers.h
    components/video_codec/nalu_rewriter.cc
    components/video_codec/nalu_rewriter.h
    components/renderer/opengl/RTCShader.h
    components/renderer/opengl/RTCShader.mm
    components/renderer/opengl/RTCDefaultShader.h
    components/renderer/opengl/RTCDefaultShader.mm
    components/renderer/opengl/RTCI420TextureCache.h
    components/renderer/opengl/RTCI420TextureCache.mm
    base/RTCCodecSpecificInfo.h
    base/RTCEncodedImage.h
    base/RTCEncodedImage.m
    base/RTCI420Buffer.h
    base/RTCLogging.h
    base/RTCLogging.mm
    base/RTCMacros.h
    base/RTCMutableI420Buffer.h
    base/RTCMutableYUVPlanarBuffer.h
    # base/RTCRtpFragmentationHeader.h
    # base/RTCRtpFragmentationHeader.m
    base/RTCVideoCapturer.h
    base/RTCVideoCapturer.m
    base/RTCVideoCodecInfo.h
    base/RTCVideoCodecInfo.m
    base/RTCVideoDecoder.h
    base/RTCVideoDecoderFactory.h
    base/RTCVideoEncoder.h
    base/RTCVideoEncoderFactory.h
    base/RTCVideoEncoderQpThresholds.h
    base/RTCVideoEncoderQpThresholds.m
    base/RTCVideoEncoderSettings.h
    base/RTCVideoEncoderSettings.m
    base/RTCVideoFrame.h
    base/RTCVideoFrame.mm
    base/RTCVideoFrameBuffer.h
    base/RTCVideoRenderer.h
    base/RTCYUVPlanarBuffer.h
    helpers/AVCaptureSession+DevicePosition.h
    helpers/AVCaptureSession+DevicePosition.mm
    helpers/NSString+StdString.h
    helpers/NSString+StdString.mm
    helpers/RTCDispatcher+Private.h
    helpers/RTCDispatcher.h
    helpers/RTCDispatcher.m
    helpers/scoped_cftyperef.h
    native/api/network_monitor_factory.h
    native/api/network_monitor_factory.mm
    native/api/video_capturer.h
    native/api/video_capturer.mm
    native/api/video_decoder_factory.h
    native/api/video_decoder_factory.mm
    native/api/video_encoder_factory.h
    native/api/video_encoder_factory.mm
    native/api/video_frame.h
    native/api/video_frame.mm
    native/api/video_frame_buffer.h
    native/api/video_frame_buffer.mm
    native/api/video_renderer.h
    native/api/video_renderer.mm
    native/src/objc_frame_buffer.h
    native/src/objc_frame_buffer.mm
    native/src/objc_video_decoder_factory.h
    native/src/objc_video_decoder_factory.mm
    native/src/objc_video_encoder_factory.h
    native/src/objc_video_encoder_factory.mm
    native/src/objc_video_frame.h
    native/src/objc_video_frame.mm
    native/src/objc_video_renderer.h
    native/src/objc_video_renderer.mm
    native/src/objc_video_track_source.h
    native/src/objc_video_track_source.mm
    api/video_codec/RTCVideoCodecConstants.h
    api/video_codec/RTCVideoCodecConstants.mm
    api/video_codec/RTCVideoDecoderVP8.h
    api/video_codec/RTCVideoDecoderVP8.mm
    api/video_codec/RTCVideoEncoderVP8.h
    api/video_codec/RTCVideoEncoderVP8.mm
    api/video_codec/RTCVideoDecoderVP9.h
    api/video_codec/RTCVideoDecoderVP9.mm
    api/video_codec/RTCVideoEncoderVP9.h
    api/video_codec/RTCVideoEncoderVP9.mm
    api/peerconnection/RTCEncodedImage+Private.h
    api/peerconnection/RTCEncodedImage+Private.mm
    # api/peerconnection/RTCRtpFragmentationHeader+Private.h
    # api/peerconnection/RTCRtpFragmentationHeader+Private.mm
    api/peerconnection/RTCVideoCodecInfo+Private.h
    api/peerconnection/RTCVideoCodecInfo+Private.mm
    api/peerconnection/RTCVideoEncoderSettings+Private.h
    api/peerconnection/RTCVideoEncoderSettings+Private.mm
    api/peerconnection/RTCAudioSource+Private.h
    api/peerconnection/RTCAudioSource.h
    api/peerconnection/RTCAudioSource.mm
    api/peerconnection/RTCAudioTrack+Private.h
    api/peerconnection/RTCAudioTrack.h
    api/peerconnection/RTCAudioTrack.mm
    api/peerconnection/RTCCertificate.h
    api/peerconnection/RTCCertificate.mm
    api/peerconnection/RTCConfiguration+Native.h
    api/peerconnection/RTCConfiguration+Private.h
    api/peerconnection/RTCConfiguration.h
    api/peerconnection/RTCConfiguration.mm
    api/peerconnection/RTCCryptoOptions.h
    api/peerconnection/RTCCryptoOptions.mm
    api/peerconnection/RTCDataChannel+Private.h
    api/peerconnection/RTCDataChannel.h
    api/peerconnection/RTCDataChannel.mm
    api/peerconnection/RTCDataChannelConfiguration+Private.h
    api/peerconnection/RTCDataChannelConfiguration.h
    api/peerconnection/RTCDataChannelConfiguration.mm
    api/peerconnection/RTCDtmfSender+Private.h
    api/peerconnection/RTCDtmfSender.h
    api/peerconnection/RTCDtmfSender.mm
    api/peerconnection/RTCFieldTrials.h
    api/peerconnection/RTCFieldTrials.mm
    api/peerconnection/RTCIceCandidate+Private.h
    api/peerconnection/RTCIceCandidate.h
    api/peerconnection/RTCIceCandidate.mm
    api/peerconnection/RTCIceServer+Private.h
    api/peerconnection/RTCIceServer.h
    api/peerconnection/RTCIceServer.mm
    api/peerconnection/RTCLegacyStatsReport+Private.h
    api/peerconnection/RTCLegacyStatsReport.h
    api/peerconnection/RTCLegacyStatsReport.mm
    api/peerconnection/RTCMediaStream+Private.h
    api/peerconnection/RTCMediaStream.h
    api/peerconnection/RTCMediaStream.mm
    api/peerconnection/RTCMediaStreamTrack+Private.h
    api/peerconnection/RTCMediaStreamTrack.h
    api/peerconnection/RTCMediaStreamTrack.mm
    api/peerconnection/RTCMetrics.h
    api/peerconnection/RTCMetrics.mm
    api/peerconnection/RTCMetricsSampleInfo+Private.h
    api/peerconnection/RTCMetricsSampleInfo.h
    api/peerconnection/RTCMetricsSampleInfo.mm
    api/peerconnection/RTCPeerConnection+DataChannel.mm
    api/peerconnection/RTCPeerConnection+Private.h
    api/peerconnection/RTCPeerConnection+Stats.mm
    api/peerconnection/RTCPeerConnection.h
    api/peerconnection/RTCPeerConnection.mm
    api/peerconnection/RTCPeerConnectionFactory+Native.h
    api/peerconnection/RTCPeerConnectionFactory+Private.h
    api/peerconnection/RTCPeerConnectionFactory.h
    api/peerconnection/RTCPeerConnectionFactory.mm
    api/peerconnection/RTCPeerConnectionFactoryBuilder+DefaultComponents.h
    api/peerconnection/RTCPeerConnectionFactoryBuilder+DefaultComponents.mm
    api/peerconnection/RTCPeerConnectionFactoryBuilder.h
    api/peerconnection/RTCPeerConnectionFactoryBuilder.mm
    api/peerconnection/RTCPeerConnectionFactoryOptions+Private.h
    api/peerconnection/RTCPeerConnectionFactoryOptions.h
    api/peerconnection/RTCPeerConnectionFactoryOptions.mm
    api/peerconnection/RTCRtcpParameters+Private.h
    api/peerconnection/RTCRtcpParameters.h
    api/peerconnection/RTCRtcpParameters.mm
    api/peerconnection/RTCRtpCodecParameters+Private.h
    api/peerconnection/RTCRtpCodecParameters.h
    api/peerconnection/RTCRtpCodecParameters.mm
    api/peerconnection/RTCRtpEncodingParameters+Private.h
    api/peerconnection/RTCRtpEncodingParameters.h
    api/peerconnection/RTCRtpEncodingParameters.mm
    api/peerconnection/RTCRtpHeaderExtension+Private.h
    api/peerconnection/RTCRtpHeaderExtension.h
    api/peerconnection/RTCRtpHeaderExtension.mm
    api/peerconnection/RTCRtpParameters+Private.h
    api/peerconnection/RTCRtpParameters.h
    api/peerconnection/RTCRtpParameters.mm
    api/peerconnection/RTCRtpReceiver+Native.h
    api/peerconnection/RTCRtpReceiver+Private.h
    api/peerconnection/RTCRtpReceiver.h
    api/peerconnection/RTCRtpReceiver.mm
    api/peerconnection/RTCRtpSender+Native.h
    api/peerconnection/RTCRtpSender+Private.h
    api/peerconnection/RTCRtpSender.h
    api/peerconnection/RTCRtpSender.mm
    api/peerconnection/RTCRtpTransceiver+Private.h
    api/peerconnection/RTCRtpTransceiver.h
    api/peerconnection/RTCRtpTransceiver.mm
    api/peerconnection/RTCSSLAdapter.h
    api/peerconnection/RTCSSLAdapter.mm
    api/peerconnection/RTCSessionDescription+Private.h
    api/peerconnection/RTCSessionDescription.h
    api/peerconnection/RTCSessionDescription.mm
    api/peerconnection/RTCStatisticsReport+Private.h
    api/peerconnection/RTCStatisticsReport.h
    api/peerconnection/RTCStatisticsReport.mm
    api/peerconnection/RTCTracing.h
    api/peerconnection/RTCTracing.mm
    api/peerconnection/RTCVideoTrack+Private.h
    api/peerconnection/RTCVideoTrack.h
    api/peerconnection/RTCVideoTrack.mm
    api/peerconnection/RTCMediaSource+Private.h
    api/peerconnection/RTCMediaSource.h
    api/peerconnection/RTCMediaSource.mm
    api/peerconnection/RTCVideoSource+Private.h
    api/peerconnection/RTCVideoSource.h
    api/peerconnection/RTCVideoSource.mm
    api/RTCVideoRendererAdapter+Private.h
    api/RTCVideoRendererAdapter.h
    api/RTCVideoRendererAdapter.mm
)

target_include_directories(libsdkmacos
PUBLIC
    $<BUILD_INTERFACE:${webrtc_loc}>
    $<BUILD_INTERFACE:${libsdkmacos_loc}>
    $<BUILD_INTERFACE:${libsdkmacos_loc}/base>
    $<BUILD_INTERFACE:${libsdkmacos_loc}/components/video_codec>
    $<INSTALL_INTERFACE:${webrtc_includedir}>
    $<INSTALL_INTERFACE:${webrtc_includedir}/sdk/objc>
    $<INSTALL_INTERFACE:${webrtc_includedir}/sdk/objc/base>
    $<INSTALL_INTERFACE:${webrtc_includedir}/sdk/objc/components/video_codec>
)
