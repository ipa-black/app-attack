package com.appodeal.ads.api;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.LazyStringArrayList;
import com.explorestack.protobuf.LazyStringList;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes2.dex */
public final class Get extends GeneratedMessageV3 implements GetOrBuilder {
    public static final int CHECK_SDK_VERSION_FIELD_NUMBER = 6;
    public static final int DEBUG_FIELD_NUMBER = 4;
    public static final int LARGE_BANNERS_FIELD_NUMBER = 2;
    public static final int REWARDED_VIDEO_FIELD_NUMBER = 3;
    public static final int SHOW_ARRAY_FIELD_NUMBER = 5;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private boolean checkSdkVersion_;
    private boolean debug_;
    private boolean largeBanners_;
    private byte memoizedIsInitialized;
    private boolean rewardedVideo_;
    private LazyStringList showArray_;
    private volatile Object type_;
    private static final Get DEFAULT_INSTANCE = new Get();
    private static final Parser<Get> PARSER = new AbstractParser<Get>() { // from class: com.appodeal.ads.api.Get.1
        @Override // com.explorestack.protobuf.Parser
        public Get parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Get(codedInputStream, extensionRegistryLite);
        }
    };

    private Get(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Get() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = "";
        this.showArray_ = LazyStringArrayList.EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Get();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Get(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 10) {
                            this.type_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 16) {
                            this.largeBanners_ = codedInputStream.readBool();
                        } else if (readTag == 24) {
                            this.rewardedVideo_ = codedInputStream.readBool();
                        } else if (readTag == 32) {
                            this.debug_ = codedInputStream.readBool();
                        } else if (readTag == 42) {
                            String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                            if (!(z2 & true)) {
                                this.showArray_ = new LazyStringArrayList();
                                z2 = true;
                            }
                            this.showArray_.add(readStringRequireUtf8);
                        } else if (readTag == 48) {
                            this.checkSdkVersion_ = codedInputStream.readBool();
                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                } catch (IOException e3) {
                    throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                }
            } finally {
                if (z2 & true) {
                    this.showArray_ = this.showArray_.getUnmodifiableView();
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_Get_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Get_fieldAccessorTable.ensureFieldAccessorsInitialized(Get.class, Builder.class);
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public String getType() {
        Object obj = this.type_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.type_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public ByteString getTypeBytes() {
        Object obj = this.type_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public boolean getLargeBanners() {
        return this.largeBanners_;
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public boolean getRewardedVideo() {
        return this.rewardedVideo_;
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public boolean getDebug() {
        return this.debug_;
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public ProtocolStringList getShowArrayList() {
        return this.showArray_;
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public int getShowArrayCount() {
        return this.showArray_.size();
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public String getShowArray(int i) {
        return (String) this.showArray_.get(i);
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    public ByteString getShowArrayBytes(int i) {
        return this.showArray_.getByteString(i);
    }

    @Override // com.appodeal.ads.api.GetOrBuilder
    @Deprecated
    public boolean getCheckSdkVersion() {
        return this.checkSdkVersion_;
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
        if (!getTypeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
        }
        boolean z = this.largeBanners_;
        if (z) {
            codedOutputStream.writeBool(2, z);
        }
        boolean z2 = this.rewardedVideo_;
        if (z2) {
            codedOutputStream.writeBool(3, z2);
        }
        boolean z3 = this.debug_;
        if (z3) {
            codedOutputStream.writeBool(4, z3);
        }
        for (int i = 0; i < this.showArray_.size(); i++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.showArray_.getRaw(i));
        }
        boolean z4 = this.checkSdkVersion_;
        if (z4) {
            codedOutputStream.writeBool(6, z4);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getTypeBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.type_) : 0;
        boolean z = this.largeBanners_;
        if (z) {
            computeStringSize += CodedOutputStream.computeBoolSize(2, z);
        }
        boolean z2 = this.rewardedVideo_;
        if (z2) {
            computeStringSize += CodedOutputStream.computeBoolSize(3, z2);
        }
        boolean z3 = this.debug_;
        if (z3) {
            computeStringSize += CodedOutputStream.computeBoolSize(4, z3);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.showArray_.size(); i3++) {
            i2 += computeStringSizeNoTag(this.showArray_.getRaw(i3));
        }
        int size = computeStringSize + i2 + getShowArrayList().size();
        boolean z4 = this.checkSdkVersion_;
        if (z4) {
            size += CodedOutputStream.computeBoolSize(6, z4);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Get)) {
            return super.equals(obj);
        }
        Get get = (Get) obj;
        return getType().equals(get.getType()) && getLargeBanners() == get.getLargeBanners() && getRewardedVideo() == get.getRewardedVideo() && getDebug() == get.getDebug() && getShowArrayList().equals(get.getShowArrayList()) && getCheckSdkVersion() == get.getCheckSdkVersion() && this.unknownFields.equals(get.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + Internal.hashBoolean(getLargeBanners())) * 37) + 3) * 53) + Internal.hashBoolean(getRewardedVideo())) * 37) + 4) * 53) + Internal.hashBoolean(getDebug());
        if (getShowArrayCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getShowArrayList().hashCode();
        }
        int hashBoolean = (((((hashCode * 37) + 6) * 53) + Internal.hashBoolean(getCheckSdkVersion())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashBoolean;
        return hashBoolean;
    }

    public static Get parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Get parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Get parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Get parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Get parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Get parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Get parseFrom(InputStream inputStream) throws IOException {
        return (Get) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Get parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Get) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Get parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Get) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Get parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Get) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Get parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Get) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Get parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Get) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Get get) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(get);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements GetOrBuilder {
        private int bitField0_;
        private boolean checkSdkVersion_;
        private boolean debug_;
        private boolean largeBanners_;
        private boolean rewardedVideo_;
        private LazyStringList showArray_;
        private Object type_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Get_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Get_fieldAccessorTable.ensureFieldAccessorsInitialized(Get.class, Builder.class);
        }

        private Builder() {
            this.type_ = "";
            this.showArray_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.type_ = "";
            this.showArray_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Get.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.type_ = "";
            this.largeBanners_ = false;
            this.rewardedVideo_ = false;
            this.debug_ = false;
            this.showArray_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            this.checkSdkVersion_ = false;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Get_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Get getDefaultInstanceForType() {
            return Get.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Get build() {
            Get buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Get buildPartial() {
            Get get = new Get(this);
            get.type_ = this.type_;
            get.largeBanners_ = this.largeBanners_;
            get.rewardedVideo_ = this.rewardedVideo_;
            get.debug_ = this.debug_;
            if ((this.bitField0_ & 1) != 0) {
                this.showArray_ = this.showArray_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            get.showArray_ = this.showArray_;
            get.checkSdkVersion_ = this.checkSdkVersion_;
            onBuilt();
            return get;
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
            if (message instanceof Get) {
                return mergeFrom((Get) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Get get) {
            if (get == Get.getDefaultInstance()) {
                return this;
            }
            if (!get.getType().isEmpty()) {
                this.type_ = get.type_;
                onChanged();
            }
            if (get.getLargeBanners()) {
                setLargeBanners(get.getLargeBanners());
            }
            if (get.getRewardedVideo()) {
                setRewardedVideo(get.getRewardedVideo());
            }
            if (get.getDebug()) {
                setDebug(get.getDebug());
            }
            if (!get.showArray_.isEmpty()) {
                if (this.showArray_.isEmpty()) {
                    this.showArray_ = get.showArray_;
                    this.bitField0_ &= -2;
                } else {
                    ensureShowArrayIsMutable();
                    this.showArray_.addAll(get.showArray_);
                }
                onChanged();
            }
            if (get.getCheckSdkVersion()) {
                setCheckSdkVersion(get.getCheckSdkVersion());
            }
            mergeUnknownFields(get.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Get.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Get.access$1100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Get r3 = (com.appodeal.ads.api.Get) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Get r4 = (com.appodeal.ads.api.Get) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Get.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Get$Builder");
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public String getType() {
            Object obj = this.type_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.type_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.type_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setType(String str) {
            str.getClass();
            this.type_ = str;
            onChanged();
            return this;
        }

        public Builder clearType() {
            this.type_ = Get.getDefaultInstance().getType();
            onChanged();
            return this;
        }

        public Builder setTypeBytes(ByteString byteString) {
            byteString.getClass();
            Get.checkByteStringIsUtf8(byteString);
            this.type_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public boolean getLargeBanners() {
            return this.largeBanners_;
        }

        public Builder setLargeBanners(boolean z) {
            this.largeBanners_ = z;
            onChanged();
            return this;
        }

        public Builder clearLargeBanners() {
            this.largeBanners_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public boolean getRewardedVideo() {
            return this.rewardedVideo_;
        }

        public Builder setRewardedVideo(boolean z) {
            this.rewardedVideo_ = z;
            onChanged();
            return this;
        }

        public Builder clearRewardedVideo() {
            this.rewardedVideo_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public boolean getDebug() {
            return this.debug_;
        }

        public Builder setDebug(boolean z) {
            this.debug_ = z;
            onChanged();
            return this;
        }

        public Builder clearDebug() {
            this.debug_ = false;
            onChanged();
            return this;
        }

        private void ensureShowArrayIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.showArray_ = new LazyStringArrayList(this.showArray_);
                this.bitField0_ |= 1;
            }
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public ProtocolStringList getShowArrayList() {
            return this.showArray_.getUnmodifiableView();
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public int getShowArrayCount() {
            return this.showArray_.size();
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public String getShowArray(int i) {
            return (String) this.showArray_.get(i);
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        public ByteString getShowArrayBytes(int i) {
            return this.showArray_.getByteString(i);
        }

        public Builder setShowArray(int i, String str) {
            str.getClass();
            ensureShowArrayIsMutable();
            this.showArray_.set(i, str);
            onChanged();
            return this;
        }

        public Builder addShowArray(String str) {
            str.getClass();
            ensureShowArrayIsMutable();
            this.showArray_.add(str);
            onChanged();
            return this;
        }

        public Builder addAllShowArray(Iterable<String> iterable) {
            ensureShowArrayIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.showArray_);
            onChanged();
            return this;
        }

        public Builder clearShowArray() {
            this.showArray_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public Builder addShowArrayBytes(ByteString byteString) {
            byteString.getClass();
            Get.checkByteStringIsUtf8(byteString);
            ensureShowArrayIsMutable();
            this.showArray_.add(byteString);
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GetOrBuilder
        @Deprecated
        public boolean getCheckSdkVersion() {
            return this.checkSdkVersion_;
        }

        @Deprecated
        public Builder setCheckSdkVersion(boolean z) {
            this.checkSdkVersion_ = z;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearCheckSdkVersion() {
            this.checkSdkVersion_ = false;
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

    public static Get getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Get> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Get> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Get getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
