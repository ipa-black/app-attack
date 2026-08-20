package com.appodeal.ads.api;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
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
public final class Extra extends GeneratedMessageV3 implements ExtraOrBuilder {
    public static final int AD_UNIT_STAT_FIELD_NUMBER = 2;
    public static final int APPS_FIELD_NUMBER = 3;
    private static final Extra DEFAULT_INSTANCE = new Extra();
    private static final Parser<Extra> PARSER = new AbstractParser<Extra>() { // from class: com.appodeal.ads.api.Extra.1
        @Override // com.explorestack.protobuf.Parser
        public Extra parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Extra(codedInputStream, extensionRegistryLite);
        }
    };
    public static final int PRICE_FLOOR_FIELD_NUMBER = 1;
    public static final int SA_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private volatile Object adUnitStat_;
    private LazyStringList apps_;
    private byte memoizedIsInitialized;
    private float priceFloor_;
    private LazyStringList sa_;

    private Extra(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Extra() {
        this.memoizedIsInitialized = (byte) -1;
        this.adUnitStat_ = "";
        this.apps_ = LazyStringArrayList.EMPTY;
        this.sa_ = LazyStringArrayList.EMPTY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Extra();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Extra(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        if (readTag == 13) {
                            this.priceFloor_ = codedInputStream.readFloat();
                        } else if (readTag == 18) {
                            this.adUnitStat_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 26) {
                            String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                            if (!(z2 & true)) {
                                this.apps_ = new LazyStringArrayList();
                                z2 |= true;
                            }
                            this.apps_.add(readStringRequireUtf8);
                        } else if (readTag == 34) {
                            String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                            if (!(z2 & true)) {
                                this.sa_ = new LazyStringArrayList();
                                z2 |= true;
                            }
                            this.sa_.add(readStringRequireUtf82);
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
                    this.apps_ = this.apps_.getUnmodifiableView();
                }
                if (z2 & true) {
                    this.sa_ = this.sa_.getUnmodifiableView();
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_Extra_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Extra_fieldAccessorTable.ensureFieldAccessorsInitialized(Extra.class, Builder.class);
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    public float getPriceFloor() {
        return this.priceFloor_;
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    public String getAdUnitStat() {
        Object obj = this.adUnitStat_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.adUnitStat_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    public ByteString getAdUnitStatBytes() {
        Object obj = this.adUnitStat_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.adUnitStat_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    @Deprecated
    public ProtocolStringList getAppsList() {
        return this.apps_;
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    @Deprecated
    public int getAppsCount() {
        return this.apps_.size();
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    @Deprecated
    public String getApps(int i) {
        return (String) this.apps_.get(i);
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    @Deprecated
    public ByteString getAppsBytes(int i) {
        return this.apps_.getByteString(i);
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    public ProtocolStringList getSaList() {
        return this.sa_;
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    public int getSaCount() {
        return this.sa_.size();
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    public String getSa(int i) {
        return (String) this.sa_.get(i);
    }

    @Override // com.appodeal.ads.api.ExtraOrBuilder
    public ByteString getSaBytes(int i) {
        return this.sa_.getByteString(i);
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
        float f2 = this.priceFloor_;
        if (f2 != 0.0f) {
            codedOutputStream.writeFloat(1, f2);
        }
        if (!getAdUnitStatBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.adUnitStat_);
        }
        for (int i = 0; i < this.apps_.size(); i++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.apps_.getRaw(i));
        }
        for (int i2 = 0; i2 < this.sa_.size(); i2++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.sa_.getRaw(i2));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        float f2 = this.priceFloor_;
        int computeFloatSize = f2 != 0.0f ? CodedOutputStream.computeFloatSize(1, f2) : 0;
        if (!getAdUnitStatBytes().isEmpty()) {
            computeFloatSize += GeneratedMessageV3.computeStringSize(2, this.adUnitStat_);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.apps_.size(); i3++) {
            i2 += computeStringSizeNoTag(this.apps_.getRaw(i3));
        }
        int size = computeFloatSize + i2 + getAppsList().size();
        int i4 = 0;
        for (int i5 = 0; i5 < this.sa_.size(); i5++) {
            i4 += computeStringSizeNoTag(this.sa_.getRaw(i5));
        }
        int size2 = size + i4 + getSaList().size() + this.unknownFields.getSerializedSize();
        this.memoizedSize = size2;
        return size2;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Extra)) {
            return super.equals(obj);
        }
        Extra extra = (Extra) obj;
        return Float.floatToIntBits(getPriceFloor()) == Float.floatToIntBits(extra.getPriceFloor()) && getAdUnitStat().equals(extra.getAdUnitStat()) && getAppsList().equals(extra.getAppsList()) && getSaList().equals(extra.getSaList()) && this.unknownFields.equals(extra.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Float.floatToIntBits(getPriceFloor())) * 37) + 2) * 53) + getAdUnitStat().hashCode();
        if (getAppsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getAppsList().hashCode();
        }
        if (getSaCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getSaList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    public static Extra parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Extra parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Extra parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Extra parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Extra parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Extra parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Extra parseFrom(InputStream inputStream) throws IOException {
        return (Extra) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Extra parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Extra) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Extra parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Extra) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Extra parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Extra) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Extra parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Extra) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Extra parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Extra) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Extra extra) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(extra);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ExtraOrBuilder {
        private Object adUnitStat_;
        private LazyStringList apps_;
        private int bitField0_;
        private float priceFloor_;
        private LazyStringList sa_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Extra_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Extra_fieldAccessorTable.ensureFieldAccessorsInitialized(Extra.class, Builder.class);
        }

        private Builder() {
            this.adUnitStat_ = "";
            this.apps_ = LazyStringArrayList.EMPTY;
            this.sa_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.adUnitStat_ = "";
            this.apps_ = LazyStringArrayList.EMPTY;
            this.sa_ = LazyStringArrayList.EMPTY;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Extra.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.priceFloor_ = 0.0f;
            this.adUnitStat_ = "";
            this.apps_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            this.sa_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Extra_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Extra getDefaultInstanceForType() {
            return Extra.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Extra build() {
            Extra buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Extra buildPartial() {
            Extra extra = new Extra(this);
            extra.priceFloor_ = this.priceFloor_;
            extra.adUnitStat_ = this.adUnitStat_;
            if ((this.bitField0_ & 1) != 0) {
                this.apps_ = this.apps_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            extra.apps_ = this.apps_;
            if ((this.bitField0_ & 2) != 0) {
                this.sa_ = this.sa_.getUnmodifiableView();
                this.bitField0_ &= -3;
            }
            extra.sa_ = this.sa_;
            onBuilt();
            return extra;
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
            if (message instanceof Extra) {
                return mergeFrom((Extra) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Extra extra) {
            if (extra == Extra.getDefaultInstance()) {
                return this;
            }
            if (extra.getPriceFloor() != 0.0f) {
                setPriceFloor(extra.getPriceFloor());
            }
            if (!extra.getAdUnitStat().isEmpty()) {
                this.adUnitStat_ = extra.adUnitStat_;
                onChanged();
            }
            if (!extra.apps_.isEmpty()) {
                if (this.apps_.isEmpty()) {
                    this.apps_ = extra.apps_;
                    this.bitField0_ &= -2;
                } else {
                    ensureAppsIsMutable();
                    this.apps_.addAll(extra.apps_);
                }
                onChanged();
            }
            if (!extra.sa_.isEmpty()) {
                if (this.sa_.isEmpty()) {
                    this.sa_ = extra.sa_;
                    this.bitField0_ &= -3;
                } else {
                    ensureSaIsMutable();
                    this.sa_.addAll(extra.sa_);
                }
                onChanged();
            }
            mergeUnknownFields(extra.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Extra.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Extra.access$900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Extra r3 = (com.appodeal.ads.api.Extra) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Extra r4 = (com.appodeal.ads.api.Extra) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Extra.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Extra$Builder");
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        public float getPriceFloor() {
            return this.priceFloor_;
        }

        public Builder setPriceFloor(float f2) {
            this.priceFloor_ = f2;
            onChanged();
            return this;
        }

        public Builder clearPriceFloor() {
            this.priceFloor_ = 0.0f;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        public String getAdUnitStat() {
            Object obj = this.adUnitStat_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.adUnitStat_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        public ByteString getAdUnitStatBytes() {
            Object obj = this.adUnitStat_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.adUnitStat_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setAdUnitStat(String str) {
            str.getClass();
            this.adUnitStat_ = str;
            onChanged();
            return this;
        }

        public Builder clearAdUnitStat() {
            this.adUnitStat_ = Extra.getDefaultInstance().getAdUnitStat();
            onChanged();
            return this;
        }

        public Builder setAdUnitStatBytes(ByteString byteString) {
            byteString.getClass();
            Extra.checkByteStringIsUtf8(byteString);
            this.adUnitStat_ = byteString;
            onChanged();
            return this;
        }

        private void ensureAppsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.apps_ = new LazyStringArrayList(this.apps_);
                this.bitField0_ |= 1;
            }
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        @Deprecated
        public ProtocolStringList getAppsList() {
            return this.apps_.getUnmodifiableView();
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        @Deprecated
        public int getAppsCount() {
            return this.apps_.size();
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        @Deprecated
        public String getApps(int i) {
            return (String) this.apps_.get(i);
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        @Deprecated
        public ByteString getAppsBytes(int i) {
            return this.apps_.getByteString(i);
        }

        @Deprecated
        public Builder setApps(int i, String str) {
            str.getClass();
            ensureAppsIsMutable();
            this.apps_.set(i, str);
            onChanged();
            return this;
        }

        @Deprecated
        public Builder addApps(String str) {
            str.getClass();
            ensureAppsIsMutable();
            this.apps_.add(str);
            onChanged();
            return this;
        }

        @Deprecated
        public Builder addAllApps(Iterable<String> iterable) {
            ensureAppsIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.apps_);
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearApps() {
            this.apps_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder addAppsBytes(ByteString byteString) {
            byteString.getClass();
            Extra.checkByteStringIsUtf8(byteString);
            ensureAppsIsMutable();
            this.apps_.add(byteString);
            onChanged();
            return this;
        }

        private void ensureSaIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.sa_ = new LazyStringArrayList(this.sa_);
                this.bitField0_ |= 2;
            }
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        public ProtocolStringList getSaList() {
            return this.sa_.getUnmodifiableView();
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        public int getSaCount() {
            return this.sa_.size();
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        public String getSa(int i) {
            return (String) this.sa_.get(i);
        }

        @Override // com.appodeal.ads.api.ExtraOrBuilder
        public ByteString getSaBytes(int i) {
            return this.sa_.getByteString(i);
        }

        public Builder setSa(int i, String str) {
            str.getClass();
            ensureSaIsMutable();
            this.sa_.set(i, str);
            onChanged();
            return this;
        }

        public Builder addSa(String str) {
            str.getClass();
            ensureSaIsMutable();
            this.sa_.add(str);
            onChanged();
            return this;
        }

        public Builder addAllSa(Iterable<String> iterable) {
            ensureSaIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.sa_);
            onChanged();
            return this;
        }

        public Builder clearSa() {
            this.sa_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        public Builder addSaBytes(ByteString byteString) {
            byteString.getClass();
            Extra.checkByteStringIsUtf8(byteString);
            ensureSaIsMutable();
            this.sa_.add(byteString);
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

    public static Extra getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Extra> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Extra> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Extra getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
