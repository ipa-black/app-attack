package com.appodeal.ads.api;

import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class AdStats extends GeneratedMessageV3 implements AdStatsOrBuilder {
    public static final int BANNER_320_CLICK_FIELD_NUMBER = 13;
    public static final int BANNER_320_SHOW_FIELD_NUMBER = 12;
    public static final int BANNER_CLICK_FIELD_NUMBER = 5;
    public static final int BANNER_MREC_CLICK_FIELD_NUMBER = 15;
    public static final int BANNER_MREC_SHOW_FIELD_NUMBER = 14;
    public static final int BANNER_SHOW_FIELD_NUMBER = 4;
    public static final int CLICK_FIELD_NUMBER = 2;
    public static final int FINISH_FIELD_NUMBER = 3;
    public static final int NATIVE_CLICK_FIELD_NUMBER = 17;
    public static final int NATIVE_SHOW_FIELD_NUMBER = 16;
    public static final int REWARDED_VIDEO_CLICK_FIELD_NUMBER = 10;
    public static final int REWARDED_VIDEO_FINISH_FIELD_NUMBER = 11;
    public static final int REWARDED_VIDEO_SHOW_FIELD_NUMBER = 9;
    public static final int SHOW_FIELD_NUMBER = 1;
    public static final int VIDEO_CLICK_FIELD_NUMBER = 7;
    public static final int VIDEO_FINISH_FIELD_NUMBER = 8;
    public static final int VIDEO_SHOW_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private int banner320Click_;
    private int banner320Show_;
    private int bannerClick_;
    private int bannerMrecClick_;
    private int bannerMrecShow_;
    private int bannerShow_;
    private int click_;
    private int finish_;
    private byte memoizedIsInitialized;
    private int nativeClick_;
    private int nativeShow_;
    private int rewardedVideoClick_;
    private int rewardedVideoFinish_;
    private int rewardedVideoShow_;
    private int show_;
    private int videoClick_;
    private int videoFinish_;
    private int videoShow_;
    private static final AdStats DEFAULT_INSTANCE = new AdStats();
    private static final Parser<AdStats> PARSER = new AbstractParser<AdStats>() { // from class: com.appodeal.ads.api.AdStats.1
        @Override // com.explorestack.protobuf.Parser
        public AdStats parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new AdStats(codedInputStream, extensionRegistryLite);
        }
    };

    private AdStats(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private AdStats() {
        this.memoizedIsInitialized = (byte) -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new AdStats();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private AdStats(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            break;
                        case 8:
                            this.show_ = codedInputStream.readInt32();
                            continue;
                        case 16:
                            this.click_ = codedInputStream.readInt32();
                            continue;
                        case 24:
                            this.finish_ = codedInputStream.readInt32();
                            continue;
                        case 32:
                            this.bannerShow_ = codedInputStream.readInt32();
                            continue;
                        case 40:
                            this.bannerClick_ = codedInputStream.readInt32();
                            continue;
                        case 48:
                            this.videoShow_ = codedInputStream.readInt32();
                            continue;
                        case 56:
                            this.videoClick_ = codedInputStream.readInt32();
                            continue;
                        case 64:
                            this.videoFinish_ = codedInputStream.readInt32();
                            continue;
                        case 72:
                            this.rewardedVideoShow_ = codedInputStream.readInt32();
                            continue;
                        case 80:
                            this.rewardedVideoClick_ = codedInputStream.readInt32();
                            continue;
                        case 88:
                            this.rewardedVideoFinish_ = codedInputStream.readInt32();
                            continue;
                        case 96:
                            this.banner320Show_ = codedInputStream.readInt32();
                            continue;
                        case 104:
                            this.banner320Click_ = codedInputStream.readInt32();
                            continue;
                        case 112:
                            this.bannerMrecShow_ = codedInputStream.readInt32();
                            continue;
                        case 120:
                            this.bannerMrecClick_ = codedInputStream.readInt32();
                            continue;
                        case 128:
                            this.nativeShow_ = codedInputStream.readInt32();
                            continue;
                        case 136:
                            this.nativeClick_ = codedInputStream.readInt32();
                            continue;
                        default:
                            if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_AdStats_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_AdStats_fieldAccessorTable.ensureFieldAccessorsInitialized(AdStats.class, Builder.class);
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getShow() {
        return this.show_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getClick() {
        return this.click_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getFinish() {
        return this.finish_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getBannerShow() {
        return this.bannerShow_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getBannerClick() {
        return this.bannerClick_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getVideoShow() {
        return this.videoShow_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getVideoClick() {
        return this.videoClick_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getVideoFinish() {
        return this.videoFinish_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getRewardedVideoShow() {
        return this.rewardedVideoShow_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getRewardedVideoClick() {
        return this.rewardedVideoClick_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getRewardedVideoFinish() {
        return this.rewardedVideoFinish_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getBanner320Show() {
        return this.banner320Show_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getBanner320Click() {
        return this.banner320Click_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getBannerMrecShow() {
        return this.bannerMrecShow_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getBannerMrecClick() {
        return this.bannerMrecClick_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getNativeShow() {
        return this.nativeShow_;
    }

    @Override // com.appodeal.ads.api.AdStatsOrBuilder
    public int getNativeClick() {
        return this.nativeClick_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i = this.show_;
        if (i != 0) {
            codedOutputStream.writeInt32(1, i);
        }
        int i2 = this.click_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(2, i2);
        }
        int i3 = this.finish_;
        if (i3 != 0) {
            codedOutputStream.writeInt32(3, i3);
        }
        int i4 = this.bannerShow_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(4, i4);
        }
        int i5 = this.bannerClick_;
        if (i5 != 0) {
            codedOutputStream.writeInt32(5, i5);
        }
        int i6 = this.videoShow_;
        if (i6 != 0) {
            codedOutputStream.writeInt32(6, i6);
        }
        int i7 = this.videoClick_;
        if (i7 != 0) {
            codedOutputStream.writeInt32(7, i7);
        }
        int i8 = this.videoFinish_;
        if (i8 != 0) {
            codedOutputStream.writeInt32(8, i8);
        }
        int i9 = this.rewardedVideoShow_;
        if (i9 != 0) {
            codedOutputStream.writeInt32(9, i9);
        }
        int i10 = this.rewardedVideoClick_;
        if (i10 != 0) {
            codedOutputStream.writeInt32(10, i10);
        }
        int i11 = this.rewardedVideoFinish_;
        if (i11 != 0) {
            codedOutputStream.writeInt32(11, i11);
        }
        int i12 = this.banner320Show_;
        if (i12 != 0) {
            codedOutputStream.writeInt32(12, i12);
        }
        int i13 = this.banner320Click_;
        if (i13 != 0) {
            codedOutputStream.writeInt32(13, i13);
        }
        int i14 = this.bannerMrecShow_;
        if (i14 != 0) {
            codedOutputStream.writeInt32(14, i14);
        }
        int i15 = this.bannerMrecClick_;
        if (i15 != 0) {
            codedOutputStream.writeInt32(15, i15);
        }
        int i16 = this.nativeShow_;
        if (i16 != 0) {
            codedOutputStream.writeInt32(16, i16);
        }
        int i17 = this.nativeClick_;
        if (i17 != 0) {
            codedOutputStream.writeInt32(17, i17);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = this.show_;
        int computeInt32Size = i2 != 0 ? CodedOutputStream.computeInt32Size(1, i2) : 0;
        int i3 = this.click_;
        if (i3 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(2, i3);
        }
        int i4 = this.finish_;
        if (i4 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(3, i4);
        }
        int i5 = this.bannerShow_;
        if (i5 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(4, i5);
        }
        int i6 = this.bannerClick_;
        if (i6 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(5, i6);
        }
        int i7 = this.videoShow_;
        if (i7 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(6, i7);
        }
        int i8 = this.videoClick_;
        if (i8 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(7, i8);
        }
        int i9 = this.videoFinish_;
        if (i9 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(8, i9);
        }
        int i10 = this.rewardedVideoShow_;
        if (i10 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(9, i10);
        }
        int i11 = this.rewardedVideoClick_;
        if (i11 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(10, i11);
        }
        int i12 = this.rewardedVideoFinish_;
        if (i12 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(11, i12);
        }
        int i13 = this.banner320Show_;
        if (i13 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(12, i13);
        }
        int i14 = this.banner320Click_;
        if (i14 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(13, i14);
        }
        int i15 = this.bannerMrecShow_;
        if (i15 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(14, i15);
        }
        int i16 = this.bannerMrecClick_;
        if (i16 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(15, i16);
        }
        int i17 = this.nativeShow_;
        if (i17 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(16, i17);
        }
        int i18 = this.nativeClick_;
        if (i18 != 0) {
            computeInt32Size += CodedOutputStream.computeInt32Size(17, i18);
        }
        int serializedSize = computeInt32Size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdStats)) {
            return super.equals(obj);
        }
        AdStats adStats = (AdStats) obj;
        return getShow() == adStats.getShow() && getClick() == adStats.getClick() && getFinish() == adStats.getFinish() && getBannerShow() == adStats.getBannerShow() && getBannerClick() == adStats.getBannerClick() && getVideoShow() == adStats.getVideoShow() && getVideoClick() == adStats.getVideoClick() && getVideoFinish() == adStats.getVideoFinish() && getRewardedVideoShow() == adStats.getRewardedVideoShow() && getRewardedVideoClick() == adStats.getRewardedVideoClick() && getRewardedVideoFinish() == adStats.getRewardedVideoFinish() && getBanner320Show() == adStats.getBanner320Show() && getBanner320Click() == adStats.getBanner320Click() && getBannerMrecShow() == adStats.getBannerMrecShow() && getBannerMrecClick() == adStats.getBannerMrecClick() && getNativeShow() == adStats.getNativeShow() && getNativeClick() == adStats.getNativeClick() && this.unknownFields.equals(adStats.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getShow()) * 37) + 2) * 53) + getClick()) * 37) + 3) * 53) + getFinish()) * 37) + 4) * 53) + getBannerShow()) * 37) + 5) * 53) + getBannerClick()) * 37) + 6) * 53) + getVideoShow()) * 37) + 7) * 53) + getVideoClick()) * 37) + 8) * 53) + getVideoFinish()) * 37) + 9) * 53) + getRewardedVideoShow()) * 37) + 10) * 53) + getRewardedVideoClick()) * 37) + 11) * 53) + getRewardedVideoFinish()) * 37) + 12) * 53) + getBanner320Show()) * 37) + 13) * 53) + getBanner320Click()) * 37) + 14) * 53) + getBannerMrecShow()) * 37) + 15) * 53) + getBannerMrecClick()) * 37) + 16) * 53) + getNativeShow()) * 37) + 17) * 53) + getNativeClick()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    public static AdStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static AdStats parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static AdStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static AdStats parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static AdStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static AdStats parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static AdStats parseFrom(InputStream inputStream) throws IOException {
        return (AdStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AdStats parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AdStats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AdStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AdStats parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AdStats parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (AdStats) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static AdStats parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdStats) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(AdStats adStats) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(adStats);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    /* loaded from: classes2.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AdStatsOrBuilder {
        private int banner320Click_;
        private int banner320Show_;
        private int bannerClick_;
        private int bannerMrecClick_;
        private int bannerMrecShow_;
        private int bannerShow_;
        private int click_;
        private int finish_;
        private int nativeClick_;
        private int nativeShow_;
        private int rewardedVideoClick_;
        private int rewardedVideoFinish_;
        private int rewardedVideoShow_;
        private int show_;
        private int videoClick_;
        private int videoFinish_;
        private int videoShow_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_AdStats_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_AdStats_fieldAccessorTable.ensureFieldAccessorsInitialized(AdStats.class, Builder.class);
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = AdStats.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.show_ = 0;
            this.click_ = 0;
            this.finish_ = 0;
            this.bannerShow_ = 0;
            this.bannerClick_ = 0;
            this.videoShow_ = 0;
            this.videoClick_ = 0;
            this.videoFinish_ = 0;
            this.rewardedVideoShow_ = 0;
            this.rewardedVideoClick_ = 0;
            this.rewardedVideoFinish_ = 0;
            this.banner320Show_ = 0;
            this.banner320Click_ = 0;
            this.bannerMrecShow_ = 0;
            this.bannerMrecClick_ = 0;
            this.nativeShow_ = 0;
            this.nativeClick_ = 0;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_AdStats_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public AdStats getDefaultInstanceForType() {
            return AdStats.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AdStats build() {
            AdStats buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AdStats buildPartial() {
            AdStats adStats = new AdStats(this);
            adStats.show_ = this.show_;
            adStats.click_ = this.click_;
            adStats.finish_ = this.finish_;
            adStats.bannerShow_ = this.bannerShow_;
            adStats.bannerClick_ = this.bannerClick_;
            adStats.videoShow_ = this.videoShow_;
            adStats.videoClick_ = this.videoClick_;
            adStats.videoFinish_ = this.videoFinish_;
            adStats.rewardedVideoShow_ = this.rewardedVideoShow_;
            adStats.rewardedVideoClick_ = this.rewardedVideoClick_;
            adStats.rewardedVideoFinish_ = this.rewardedVideoFinish_;
            adStats.banner320Show_ = this.banner320Show_;
            adStats.banner320Click_ = this.banner320Click_;
            adStats.bannerMrecShow_ = this.bannerMrecShow_;
            adStats.bannerMrecClick_ = this.bannerMrecClick_;
            adStats.nativeShow_ = this.nativeShow_;
            adStats.nativeClick_ = this.nativeClick_;
            onBuilt();
            return adStats;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder
        /* renamed from: clone */
        public Builder mo142clone() {
            return (Builder) super.mo142clone();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof AdStats) {
                return mergeFrom((AdStats) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(AdStats adStats) {
            if (adStats == AdStats.getDefaultInstance()) {
                return this;
            }
            if (adStats.getShow() != 0) {
                setShow(adStats.getShow());
            }
            if (adStats.getClick() != 0) {
                setClick(adStats.getClick());
            }
            if (adStats.getFinish() != 0) {
                setFinish(adStats.getFinish());
            }
            if (adStats.getBannerShow() != 0) {
                setBannerShow(adStats.getBannerShow());
            }
            if (adStats.getBannerClick() != 0) {
                setBannerClick(adStats.getBannerClick());
            }
            if (adStats.getVideoShow() != 0) {
                setVideoShow(adStats.getVideoShow());
            }
            if (adStats.getVideoClick() != 0) {
                setVideoClick(adStats.getVideoClick());
            }
            if (adStats.getVideoFinish() != 0) {
                setVideoFinish(adStats.getVideoFinish());
            }
            if (adStats.getRewardedVideoShow() != 0) {
                setRewardedVideoShow(adStats.getRewardedVideoShow());
            }
            if (adStats.getRewardedVideoClick() != 0) {
                setRewardedVideoClick(adStats.getRewardedVideoClick());
            }
            if (adStats.getRewardedVideoFinish() != 0) {
                setRewardedVideoFinish(adStats.getRewardedVideoFinish());
            }
            if (adStats.getBanner320Show() != 0) {
                setBanner320Show(adStats.getBanner320Show());
            }
            if (adStats.getBanner320Click() != 0) {
                setBanner320Click(adStats.getBanner320Click());
            }
            if (adStats.getBannerMrecShow() != 0) {
                setBannerMrecShow(adStats.getBannerMrecShow());
            }
            if (adStats.getBannerMrecClick() != 0) {
                setBannerMrecClick(adStats.getBannerMrecClick());
            }
            if (adStats.getNativeShow() != 0) {
                setNativeShow(adStats.getNativeShow());
            }
            if (adStats.getNativeClick() != 0) {
                setNativeClick(adStats.getNativeClick());
            }
            mergeUnknownFields(adStats.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.AdStats.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.AdStats.access$2200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.AdStats r3 = (com.appodeal.ads.api.AdStats) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.appodeal.ads.api.AdStats r4 = (com.appodeal.ads.api.AdStats) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.AdStats.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.AdStats$Builder");
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getShow() {
            return this.show_;
        }

        public Builder setShow(int i) {
            this.show_ = i;
            onChanged();
            return this;
        }

        public Builder clearShow() {
            this.show_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getClick() {
            return this.click_;
        }

        public Builder setClick(int i) {
            this.click_ = i;
            onChanged();
            return this;
        }

        public Builder clearClick() {
            this.click_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getFinish() {
            return this.finish_;
        }

        public Builder setFinish(int i) {
            this.finish_ = i;
            onChanged();
            return this;
        }

        public Builder clearFinish() {
            this.finish_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getBannerShow() {
            return this.bannerShow_;
        }

        public Builder setBannerShow(int i) {
            this.bannerShow_ = i;
            onChanged();
            return this;
        }

        public Builder clearBannerShow() {
            this.bannerShow_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getBannerClick() {
            return this.bannerClick_;
        }

        public Builder setBannerClick(int i) {
            this.bannerClick_ = i;
            onChanged();
            return this;
        }

        public Builder clearBannerClick() {
            this.bannerClick_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getVideoShow() {
            return this.videoShow_;
        }

        public Builder setVideoShow(int i) {
            this.videoShow_ = i;
            onChanged();
            return this;
        }

        public Builder clearVideoShow() {
            this.videoShow_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getVideoClick() {
            return this.videoClick_;
        }

        public Builder setVideoClick(int i) {
            this.videoClick_ = i;
            onChanged();
            return this;
        }

        public Builder clearVideoClick() {
            this.videoClick_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getVideoFinish() {
            return this.videoFinish_;
        }

        public Builder setVideoFinish(int i) {
            this.videoFinish_ = i;
            onChanged();
            return this;
        }

        public Builder clearVideoFinish() {
            this.videoFinish_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getRewardedVideoShow() {
            return this.rewardedVideoShow_;
        }

        public Builder setRewardedVideoShow(int i) {
            this.rewardedVideoShow_ = i;
            onChanged();
            return this;
        }

        public Builder clearRewardedVideoShow() {
            this.rewardedVideoShow_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getRewardedVideoClick() {
            return this.rewardedVideoClick_;
        }

        public Builder setRewardedVideoClick(int i) {
            this.rewardedVideoClick_ = i;
            onChanged();
            return this;
        }

        public Builder clearRewardedVideoClick() {
            this.rewardedVideoClick_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getRewardedVideoFinish() {
            return this.rewardedVideoFinish_;
        }

        public Builder setRewardedVideoFinish(int i) {
            this.rewardedVideoFinish_ = i;
            onChanged();
            return this;
        }

        public Builder clearRewardedVideoFinish() {
            this.rewardedVideoFinish_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getBanner320Show() {
            return this.banner320Show_;
        }

        public Builder setBanner320Show(int i) {
            this.banner320Show_ = i;
            onChanged();
            return this;
        }

        public Builder clearBanner320Show() {
            this.banner320Show_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getBanner320Click() {
            return this.banner320Click_;
        }

        public Builder setBanner320Click(int i) {
            this.banner320Click_ = i;
            onChanged();
            return this;
        }

        public Builder clearBanner320Click() {
            this.banner320Click_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getBannerMrecShow() {
            return this.bannerMrecShow_;
        }

        public Builder setBannerMrecShow(int i) {
            this.bannerMrecShow_ = i;
            onChanged();
            return this;
        }

        public Builder clearBannerMrecShow() {
            this.bannerMrecShow_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getBannerMrecClick() {
            return this.bannerMrecClick_;
        }

        public Builder setBannerMrecClick(int i) {
            this.bannerMrecClick_ = i;
            onChanged();
            return this;
        }

        public Builder clearBannerMrecClick() {
            this.bannerMrecClick_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getNativeShow() {
            return this.nativeShow_;
        }

        public Builder setNativeShow(int i) {
            this.nativeShow_ = i;
            onChanged();
            return this;
        }

        public Builder clearNativeShow() {
            this.nativeShow_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.AdStatsOrBuilder
        public int getNativeClick() {
            return this.nativeClick_;
        }

        public Builder setNativeClick(int i) {
            this.nativeClick_ = i;
            onChanged();
            return this;
        }

        public Builder clearNativeClick() {
            this.nativeClick_ = 0;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }
    }

    public static AdStats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<AdStats> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<AdStats> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public AdStats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
