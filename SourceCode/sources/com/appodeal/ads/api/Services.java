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
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes2.dex */
public final class Services extends GeneratedMessageV3 implements ServicesOrBuilder {
    public static final int ADJUST_FIELD_NUMBER = 2;
    public static final int APPSFLYER_FIELD_NUMBER = 1;
    public static final int FACEBOOK_FIELD_NUMBER = 3;
    public static final int FIREBASE_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private Adjust adjust_;
    private Appsflyer appsflyer_;
    private Facebook facebook_;
    private Firebase firebase_;
    private byte memoizedIsInitialized;
    private static final Services DEFAULT_INSTANCE = new Services();
    private static final Parser<Services> PARSER = new AbstractParser<Services>() { // from class: com.appodeal.ads.api.Services.1
        @Override // com.explorestack.protobuf.Parser
        public Services parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Services(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes2.dex */
    public interface AdjustOrBuilder extends MessageOrBuilder {
        String getAttributionId();

        ByteString getAttributionIdBytes();

        String getConversionData();

        ByteString getConversionDataBytes();
    }

    /* loaded from: classes2.dex */
    public interface AppsflyerOrBuilder extends MessageOrBuilder {
        String getAttributionId();

        ByteString getAttributionIdBytes();

        String getConversionData();

        ByteString getConversionDataBytes();
    }

    /* loaded from: classes2.dex */
    public interface FacebookOrBuilder extends MessageOrBuilder {
        String getAppId();

        ByteString getAppIdBytes();

        String getUserId();

        ByteString getUserIdBytes();
    }

    /* loaded from: classes2.dex */
    public interface FirebaseOrBuilder extends MessageOrBuilder {
        String getAppInstanceId();

        ByteString getAppInstanceIdBytes();

        String getKeywords(int i);

        ByteString getKeywordsBytes(int i);

        int getKeywordsCount();

        List<String> getKeywordsList();
    }

    private Services(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Services() {
        this.memoizedIsInitialized = (byte) -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Services();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Services(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                Appsflyer appsflyer = this.appsflyer_;
                                Appsflyer.Builder builder = appsflyer != null ? appsflyer.toBuilder() : null;
                                Appsflyer appsflyer2 = (Appsflyer) codedInputStream.readMessage(Appsflyer.parser(), extensionRegistryLite);
                                this.appsflyer_ = appsflyer2;
                                if (builder != null) {
                                    builder.mergeFrom(appsflyer2);
                                    this.appsflyer_ = builder.buildPartial();
                                }
                            } else if (readTag == 18) {
                                Adjust adjust = this.adjust_;
                                Adjust.Builder builder2 = adjust != null ? adjust.toBuilder() : null;
                                Adjust adjust2 = (Adjust) codedInputStream.readMessage(Adjust.parser(), extensionRegistryLite);
                                this.adjust_ = adjust2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(adjust2);
                                    this.adjust_ = builder2.buildPartial();
                                }
                            } else if (readTag == 26) {
                                Facebook facebook = this.facebook_;
                                Facebook.Builder builder3 = facebook != null ? facebook.toBuilder() : null;
                                Facebook facebook2 = (Facebook) codedInputStream.readMessage(Facebook.parser(), extensionRegistryLite);
                                this.facebook_ = facebook2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(facebook2);
                                    this.facebook_ = builder3.buildPartial();
                                }
                            } else if (readTag == 34) {
                                Firebase firebase = this.firebase_;
                                Firebase.Builder builder4 = firebase != null ? firebase.toBuilder() : null;
                                Firebase firebase2 = (Firebase) codedInputStream.readMessage(Firebase.parser(), extensionRegistryLite);
                                this.firebase_ = firebase2;
                                if (builder4 != null) {
                                    builder4.mergeFrom(firebase2);
                                    this.firebase_ = builder4.buildPartial();
                                }
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    throw e3.setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_Services_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Services_fieldAccessorTable.ensureFieldAccessorsInitialized(Services.class, Builder.class);
    }

    /* loaded from: classes2.dex */
    public static final class Appsflyer extends GeneratedMessageV3 implements AppsflyerOrBuilder {
        public static final int ATTRIBUTION_ID_FIELD_NUMBER = 1;
        public static final int CONVERSION_DATA_FIELD_NUMBER = 2;
        private static final Appsflyer DEFAULT_INSTANCE = new Appsflyer();
        private static final Parser<Appsflyer> PARSER = new AbstractParser<Appsflyer>() { // from class: com.appodeal.ads.api.Services.Appsflyer.1
            @Override // com.explorestack.protobuf.Parser
            public Appsflyer parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Appsflyer(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private volatile Object attributionId_;
        private volatile Object conversionData_;
        private byte memoizedIsInitialized;

        private Appsflyer(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Appsflyer() {
            this.memoizedIsInitialized = (byte) -1;
            this.attributionId_ = "";
            this.conversionData_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Appsflyer();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Appsflyer(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.attributionId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.conversionData_ = codedInputStream.readStringRequireUtf8();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Services_Appsflyer_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Services_Appsflyer_fieldAccessorTable.ensureFieldAccessorsInitialized(Appsflyer.class, Builder.class);
        }

        @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
        public String getAttributionId() {
            Object obj = this.attributionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.attributionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
        public ByteString getAttributionIdBytes() {
            Object obj = this.attributionId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.attributionId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
        public String getConversionData() {
            Object obj = this.conversionData_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.conversionData_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
        public ByteString getConversionDataBytes() {
            Object obj = this.conversionData_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.conversionData_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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
            if (!getAttributionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.attributionId_);
            }
            if (!getConversionDataBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.conversionData_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getAttributionIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.attributionId_) : 0;
            if (!getConversionDataBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.conversionData_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Appsflyer)) {
                return super.equals(obj);
            }
            Appsflyer appsflyer = (Appsflyer) obj;
            return getAttributionId().equals(appsflyer.getAttributionId()) && getConversionData().equals(appsflyer.getConversionData()) && this.unknownFields.equals(appsflyer.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAttributionId().hashCode()) * 37) + 2) * 53) + getConversionData().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static Appsflyer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Appsflyer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Appsflyer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Appsflyer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Appsflyer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Appsflyer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Appsflyer parseFrom(InputStream inputStream) throws IOException {
            return (Appsflyer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Appsflyer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Appsflyer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Appsflyer parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Appsflyer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Appsflyer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Appsflyer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Appsflyer parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Appsflyer) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Appsflyer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Appsflyer) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Appsflyer appsflyer) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(appsflyer);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AppsflyerOrBuilder {
            private Object attributionId_;
            private Object conversionData_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Api.internal_static_com_appodeal_ads_Services_Appsflyer_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return Api.internal_static_com_appodeal_ads_Services_Appsflyer_fieldAccessorTable.ensureFieldAccessorsInitialized(Appsflyer.class, Builder.class);
            }

            private Builder() {
                this.attributionId_ = "";
                this.conversionData_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.attributionId_ = "";
                this.conversionData_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Appsflyer.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.attributionId_ = "";
                this.conversionData_ = "";
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Api.internal_static_com_appodeal_ads_Services_Appsflyer_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public Appsflyer getDefaultInstanceForType() {
                return Appsflyer.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Appsflyer build() {
                Appsflyer buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Appsflyer buildPartial() {
                Appsflyer appsflyer = new Appsflyer(this);
                appsflyer.attributionId_ = this.attributionId_;
                appsflyer.conversionData_ = this.conversionData_;
                onBuilt();
                return appsflyer;
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
                if (message instanceof Appsflyer) {
                    return mergeFrom((Appsflyer) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Appsflyer appsflyer) {
                if (appsflyer == Appsflyer.getDefaultInstance()) {
                    return this;
                }
                if (!appsflyer.getAttributionId().isEmpty()) {
                    this.attributionId_ = appsflyer.attributionId_;
                    onChanged();
                }
                if (!appsflyer.getConversionData().isEmpty()) {
                    this.conversionData_ = appsflyer.conversionData_;
                    onChanged();
                }
                mergeUnknownFields(appsflyer.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.appodeal.ads.api.Services.Appsflyer.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Services.Appsflyer.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.appodeal.ads.api.Services$Appsflyer r3 = (com.appodeal.ads.api.Services.Appsflyer) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.appodeal.ads.api.Services$Appsflyer r4 = (com.appodeal.ads.api.Services.Appsflyer) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Services.Appsflyer.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Services$Appsflyer$Builder");
            }

            @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
            public String getAttributionId() {
                Object obj = this.attributionId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.attributionId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
            public ByteString getAttributionIdBytes() {
                Object obj = this.attributionId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.attributionId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAttributionId(String str) {
                str.getClass();
                this.attributionId_ = str;
                onChanged();
                return this;
            }

            public Builder clearAttributionId() {
                this.attributionId_ = Appsflyer.getDefaultInstance().getAttributionId();
                onChanged();
                return this;
            }

            public Builder setAttributionIdBytes(ByteString byteString) {
                byteString.getClass();
                Appsflyer.checkByteStringIsUtf8(byteString);
                this.attributionId_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
            public String getConversionData() {
                Object obj = this.conversionData_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.conversionData_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Services.AppsflyerOrBuilder
            public ByteString getConversionDataBytes() {
                Object obj = this.conversionData_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.conversionData_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setConversionData(String str) {
                str.getClass();
                this.conversionData_ = str;
                onChanged();
                return this;
            }

            public Builder clearConversionData() {
                this.conversionData_ = Appsflyer.getDefaultInstance().getConversionData();
                onChanged();
                return this;
            }

            public Builder setConversionDataBytes(ByteString byteString) {
                byteString.getClass();
                Appsflyer.checkByteStringIsUtf8(byteString);
                this.conversionData_ = byteString;
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

        public static Appsflyer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Appsflyer> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Appsflyer> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Appsflyer getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Adjust extends GeneratedMessageV3 implements AdjustOrBuilder {
        public static final int ATTRIBUTION_ID_FIELD_NUMBER = 1;
        public static final int CONVERSION_DATA_FIELD_NUMBER = 2;
        private static final Adjust DEFAULT_INSTANCE = new Adjust();
        private static final Parser<Adjust> PARSER = new AbstractParser<Adjust>() { // from class: com.appodeal.ads.api.Services.Adjust.1
            @Override // com.explorestack.protobuf.Parser
            public Adjust parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Adjust(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private volatile Object attributionId_;
        private volatile Object conversionData_;
        private byte memoizedIsInitialized;

        private Adjust(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Adjust() {
            this.memoizedIsInitialized = (byte) -1;
            this.attributionId_ = "";
            this.conversionData_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Adjust();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Adjust(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.attributionId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.conversionData_ = codedInputStream.readStringRequireUtf8();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Services_Adjust_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Services_Adjust_fieldAccessorTable.ensureFieldAccessorsInitialized(Adjust.class, Builder.class);
        }

        @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
        public String getAttributionId() {
            Object obj = this.attributionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.attributionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
        public ByteString getAttributionIdBytes() {
            Object obj = this.attributionId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.attributionId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
        public String getConversionData() {
            Object obj = this.conversionData_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.conversionData_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
        public ByteString getConversionDataBytes() {
            Object obj = this.conversionData_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.conversionData_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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
            if (!getAttributionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.attributionId_);
            }
            if (!getConversionDataBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.conversionData_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getAttributionIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.attributionId_) : 0;
            if (!getConversionDataBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.conversionData_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Adjust)) {
                return super.equals(obj);
            }
            Adjust adjust = (Adjust) obj;
            return getAttributionId().equals(adjust.getAttributionId()) && getConversionData().equals(adjust.getConversionData()) && this.unknownFields.equals(adjust.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAttributionId().hashCode()) * 37) + 2) * 53) + getConversionData().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static Adjust parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Adjust parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Adjust parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Adjust parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Adjust parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Adjust parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Adjust parseFrom(InputStream inputStream) throws IOException {
            return (Adjust) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Adjust parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Adjust) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Adjust parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Adjust) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Adjust parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Adjust) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Adjust parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Adjust) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Adjust parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Adjust) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Adjust adjust) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adjust);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AdjustOrBuilder {
            private Object attributionId_;
            private Object conversionData_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Api.internal_static_com_appodeal_ads_Services_Adjust_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return Api.internal_static_com_appodeal_ads_Services_Adjust_fieldAccessorTable.ensureFieldAccessorsInitialized(Adjust.class, Builder.class);
            }

            private Builder() {
                this.attributionId_ = "";
                this.conversionData_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.attributionId_ = "";
                this.conversionData_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Adjust.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.attributionId_ = "";
                this.conversionData_ = "";
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Api.internal_static_com_appodeal_ads_Services_Adjust_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public Adjust getDefaultInstanceForType() {
                return Adjust.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Adjust build() {
                Adjust buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Adjust buildPartial() {
                Adjust adjust = new Adjust(this);
                adjust.attributionId_ = this.attributionId_;
                adjust.conversionData_ = this.conversionData_;
                onBuilt();
                return adjust;
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
                if (message instanceof Adjust) {
                    return mergeFrom((Adjust) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Adjust adjust) {
                if (adjust == Adjust.getDefaultInstance()) {
                    return this;
                }
                if (!adjust.getAttributionId().isEmpty()) {
                    this.attributionId_ = adjust.attributionId_;
                    onChanged();
                }
                if (!adjust.getConversionData().isEmpty()) {
                    this.conversionData_ = adjust.conversionData_;
                    onChanged();
                }
                mergeUnknownFields(adjust.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.appodeal.ads.api.Services.Adjust.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Services.Adjust.access$1800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.appodeal.ads.api.Services$Adjust r3 = (com.appodeal.ads.api.Services.Adjust) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.appodeal.ads.api.Services$Adjust r4 = (com.appodeal.ads.api.Services.Adjust) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Services.Adjust.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Services$Adjust$Builder");
            }

            @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
            public String getAttributionId() {
                Object obj = this.attributionId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.attributionId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
            public ByteString getAttributionIdBytes() {
                Object obj = this.attributionId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.attributionId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAttributionId(String str) {
                str.getClass();
                this.attributionId_ = str;
                onChanged();
                return this;
            }

            public Builder clearAttributionId() {
                this.attributionId_ = Adjust.getDefaultInstance().getAttributionId();
                onChanged();
                return this;
            }

            public Builder setAttributionIdBytes(ByteString byteString) {
                byteString.getClass();
                Adjust.checkByteStringIsUtf8(byteString);
                this.attributionId_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
            public String getConversionData() {
                Object obj = this.conversionData_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.conversionData_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Services.AdjustOrBuilder
            public ByteString getConversionDataBytes() {
                Object obj = this.conversionData_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.conversionData_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setConversionData(String str) {
                str.getClass();
                this.conversionData_ = str;
                onChanged();
                return this;
            }

            public Builder clearConversionData() {
                this.conversionData_ = Adjust.getDefaultInstance().getConversionData();
                onChanged();
                return this;
            }

            public Builder setConversionDataBytes(ByteString byteString) {
                byteString.getClass();
                Adjust.checkByteStringIsUtf8(byteString);
                this.conversionData_ = byteString;
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

        public static Adjust getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Adjust> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Adjust> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Adjust getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Facebook extends GeneratedMessageV3 implements FacebookOrBuilder {
        public static final int APP_ID_FIELD_NUMBER = 2;
        private static final Facebook DEFAULT_INSTANCE = new Facebook();
        private static final Parser<Facebook> PARSER = new AbstractParser<Facebook>() { // from class: com.appodeal.ads.api.Services.Facebook.1
            @Override // com.explorestack.protobuf.Parser
            public Facebook parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Facebook(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object appId_;
        private byte memoizedIsInitialized;
        private volatile Object userId_;

        private Facebook(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Facebook() {
            this.memoizedIsInitialized = (byte) -1;
            this.userId_ = "";
            this.appId_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Facebook();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Facebook(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.userId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.appId_ = codedInputStream.readStringRequireUtf8();
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Services_Facebook_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Services_Facebook_fieldAccessorTable.ensureFieldAccessorsInitialized(Facebook.class, Builder.class);
        }

        @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
        public ByteString getUserIdBytes() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
        public String getAppId() {
            Object obj = this.appId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
        public ByteString getAppIdBytes() {
            Object obj = this.appId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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
            if (!getUserIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.userId_);
            }
            if (!getAppIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.appId_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getUserIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.userId_) : 0;
            if (!getAppIdBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.appId_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Facebook)) {
                return super.equals(obj);
            }
            Facebook facebook = (Facebook) obj;
            return getUserId().equals(facebook.getUserId()) && getAppId().equals(facebook.getAppId()) && this.unknownFields.equals(facebook.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUserId().hashCode()) * 37) + 2) * 53) + getAppId().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static Facebook parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Facebook parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Facebook parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Facebook parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Facebook parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Facebook parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Facebook parseFrom(InputStream inputStream) throws IOException {
            return (Facebook) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Facebook parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Facebook) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Facebook parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Facebook) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Facebook parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Facebook) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Facebook parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Facebook) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Facebook parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Facebook) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Facebook facebook) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(facebook);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FacebookOrBuilder {
            private Object appId_;
            private Object userId_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Api.internal_static_com_appodeal_ads_Services_Facebook_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return Api.internal_static_com_appodeal_ads_Services_Facebook_fieldAccessorTable.ensureFieldAccessorsInitialized(Facebook.class, Builder.class);
            }

            private Builder() {
                this.userId_ = "";
                this.appId_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.userId_ = "";
                this.appId_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Facebook.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.userId_ = "";
                this.appId_ = "";
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Api.internal_static_com_appodeal_ads_Services_Facebook_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public Facebook getDefaultInstanceForType() {
                return Facebook.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Facebook build() {
                Facebook buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Facebook buildPartial() {
                Facebook facebook = new Facebook(this);
                facebook.userId_ = this.userId_;
                facebook.appId_ = this.appId_;
                onBuilt();
                return facebook;
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
                if (message instanceof Facebook) {
                    return mergeFrom((Facebook) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Facebook facebook) {
                if (facebook == Facebook.getDefaultInstance()) {
                    return this;
                }
                if (!facebook.getUserId().isEmpty()) {
                    this.userId_ = facebook.userId_;
                    onChanged();
                }
                if (!facebook.getAppId().isEmpty()) {
                    this.appId_ = facebook.appId_;
                    onChanged();
                }
                mergeUnknownFields(facebook.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.appodeal.ads.api.Services.Facebook.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Services.Facebook.access$2900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.appodeal.ads.api.Services$Facebook r3 = (com.appodeal.ads.api.Services.Facebook) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.appodeal.ads.api.Services$Facebook r4 = (com.appodeal.ads.api.Services.Facebook) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Services.Facebook.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Services$Facebook$Builder");
            }

            @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
            public String getUserId() {
                Object obj = this.userId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.userId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.userId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.userId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.userId_ = str;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.userId_ = Facebook.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                Facebook.checkByteStringIsUtf8(byteString);
                this.userId_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
            public String getAppId() {
                Object obj = this.appId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.appId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Services.FacebookOrBuilder
            public ByteString getAppIdBytes() {
                Object obj = this.appId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.appId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAppId(String str) {
                str.getClass();
                this.appId_ = str;
                onChanged();
                return this;
            }

            public Builder clearAppId() {
                this.appId_ = Facebook.getDefaultInstance().getAppId();
                onChanged();
                return this;
            }

            public Builder setAppIdBytes(ByteString byteString) {
                byteString.getClass();
                Facebook.checkByteStringIsUtf8(byteString);
                this.appId_ = byteString;
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

        public static Facebook getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Facebook> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Facebook> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Facebook getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class Firebase extends GeneratedMessageV3 implements FirebaseOrBuilder {
        public static final int APP_INSTANCE_ID_FIELD_NUMBER = 1;
        public static final int KEYWORDS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object appInstanceId_;
        private LazyStringList keywords_;
        private byte memoizedIsInitialized;
        private static final Firebase DEFAULT_INSTANCE = new Firebase();
        private static final Parser<Firebase> PARSER = new AbstractParser<Firebase>() { // from class: com.appodeal.ads.api.Services.Firebase.1
            @Override // com.explorestack.protobuf.Parser
            public Firebase parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Firebase(codedInputStream, extensionRegistryLite);
            }
        };

        private Firebase(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private Firebase() {
            this.memoizedIsInitialized = (byte) -1;
            this.appInstanceId_ = "";
            this.keywords_ = LazyStringArrayList.EMPTY;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new Firebase();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private Firebase(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 10) {
                                    this.appInstanceId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                    if (!(z2 & true)) {
                                        this.keywords_ = new LazyStringArrayList();
                                        z2 = true;
                                    }
                                    this.keywords_.add(readStringRequireUtf8);
                                } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                }
                            }
                            z = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } finally {
                    if (z2 & true) {
                        this.keywords_ = this.keywords_.getUnmodifiableView();
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Services_Firebase_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Services_Firebase_fieldAccessorTable.ensureFieldAccessorsInitialized(Firebase.class, Builder.class);
        }

        @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
        public String getAppInstanceId() {
            Object obj = this.appInstanceId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appInstanceId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
        public ByteString getAppInstanceIdBytes() {
            Object obj = this.appInstanceId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appInstanceId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
        public ProtocolStringList getKeywordsList() {
            return this.keywords_;
        }

        @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
        public int getKeywordsCount() {
            return this.keywords_.size();
        }

        @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
        public String getKeywords(int i) {
            return (String) this.keywords_.get(i);
        }

        @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
        public ByteString getKeywordsBytes(int i) {
            return this.keywords_.getByteString(i);
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
            if (!getAppInstanceIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.appInstanceId_);
            }
            for (int i = 0; i < this.keywords_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.keywords_.getRaw(i));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getAppInstanceIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.appInstanceId_) : 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.keywords_.size(); i3++) {
                i2 += computeStringSizeNoTag(this.keywords_.getRaw(i3));
            }
            int size = computeStringSize + i2 + getKeywordsList().size() + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Firebase)) {
                return super.equals(obj);
            }
            Firebase firebase = (Firebase) obj;
            return getAppInstanceId().equals(firebase.getAppInstanceId()) && getKeywordsList().equals(firebase.getKeywordsList()) && this.unknownFields.equals(firebase.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAppInstanceId().hashCode();
            if (getKeywordsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getKeywordsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static Firebase parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Firebase parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Firebase parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Firebase parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Firebase parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Firebase parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Firebase parseFrom(InputStream inputStream) throws IOException {
            return (Firebase) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Firebase parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Firebase) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Firebase parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Firebase) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Firebase parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Firebase) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Firebase parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Firebase) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Firebase parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Firebase) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Firebase firebase) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(firebase);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FirebaseOrBuilder {
            private Object appInstanceId_;
            private int bitField0_;
            private LazyStringList keywords_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Api.internal_static_com_appodeal_ads_Services_Firebase_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return Api.internal_static_com_appodeal_ads_Services_Firebase_fieldAccessorTable.ensureFieldAccessorsInitialized(Firebase.class, Builder.class);
            }

            private Builder() {
                this.appInstanceId_ = "";
                this.keywords_ = LazyStringArrayList.EMPTY;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.appInstanceId_ = "";
                this.keywords_ = LazyStringArrayList.EMPTY;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = Firebase.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.appInstanceId_ = "";
                this.keywords_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Api.internal_static_com_appodeal_ads_Services_Firebase_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public Firebase getDefaultInstanceForType() {
                return Firebase.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Firebase build() {
                Firebase buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Firebase buildPartial() {
                Firebase firebase = new Firebase(this);
                firebase.appInstanceId_ = this.appInstanceId_;
                if ((this.bitField0_ & 1) != 0) {
                    this.keywords_ = this.keywords_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                firebase.keywords_ = this.keywords_;
                onBuilt();
                return firebase;
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
                if (message instanceof Firebase) {
                    return mergeFrom((Firebase) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Firebase firebase) {
                if (firebase == Firebase.getDefaultInstance()) {
                    return this;
                }
                if (!firebase.getAppInstanceId().isEmpty()) {
                    this.appInstanceId_ = firebase.appInstanceId_;
                    onChanged();
                }
                if (!firebase.keywords_.isEmpty()) {
                    if (this.keywords_.isEmpty()) {
                        this.keywords_ = firebase.keywords_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureKeywordsIsMutable();
                        this.keywords_.addAll(firebase.keywords_);
                    }
                    onChanged();
                }
                mergeUnknownFields(firebase.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.appodeal.ads.api.Services.Firebase.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Services.Firebase.access$4000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.appodeal.ads.api.Services$Firebase r3 = (com.appodeal.ads.api.Services.Firebase) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.appodeal.ads.api.Services$Firebase r4 = (com.appodeal.ads.api.Services.Firebase) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Services.Firebase.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Services$Firebase$Builder");
            }

            @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
            public String getAppInstanceId() {
                Object obj = this.appInstanceId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.appInstanceId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
            public ByteString getAppInstanceIdBytes() {
                Object obj = this.appInstanceId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.appInstanceId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAppInstanceId(String str) {
                str.getClass();
                this.appInstanceId_ = str;
                onChanged();
                return this;
            }

            public Builder clearAppInstanceId() {
                this.appInstanceId_ = Firebase.getDefaultInstance().getAppInstanceId();
                onChanged();
                return this;
            }

            public Builder setAppInstanceIdBytes(ByteString byteString) {
                byteString.getClass();
                Firebase.checkByteStringIsUtf8(byteString);
                this.appInstanceId_ = byteString;
                onChanged();
                return this;
            }

            private void ensureKeywordsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.keywords_ = new LazyStringArrayList(this.keywords_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
            public ProtocolStringList getKeywordsList() {
                return this.keywords_.getUnmodifiableView();
            }

            @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
            public int getKeywordsCount() {
                return this.keywords_.size();
            }

            @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
            public String getKeywords(int i) {
                return (String) this.keywords_.get(i);
            }

            @Override // com.appodeal.ads.api.Services.FirebaseOrBuilder
            public ByteString getKeywordsBytes(int i) {
                return this.keywords_.getByteString(i);
            }

            public Builder setKeywords(int i, String str) {
                str.getClass();
                ensureKeywordsIsMutable();
                this.keywords_.set(i, str);
                onChanged();
                return this;
            }

            public Builder addKeywords(String str) {
                str.getClass();
                ensureKeywordsIsMutable();
                this.keywords_.add(str);
                onChanged();
                return this;
            }

            public Builder addAllKeywords(Iterable<String> iterable) {
                ensureKeywordsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.keywords_);
                onChanged();
                return this;
            }

            public Builder clearKeywords() {
                this.keywords_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder addKeywordsBytes(ByteString byteString) {
                byteString.getClass();
                Firebase.checkByteStringIsUtf8(byteString);
                ensureKeywordsIsMutable();
                this.keywords_.add(byteString);
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

        public static Firebase getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Firebase> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<Firebase> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Firebase getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public boolean hasAppsflyer() {
        return this.appsflyer_ != null;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public Appsflyer getAppsflyer() {
        Appsflyer appsflyer = this.appsflyer_;
        return appsflyer == null ? Appsflyer.getDefaultInstance() : appsflyer;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public AppsflyerOrBuilder getAppsflyerOrBuilder() {
        return getAppsflyer();
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public boolean hasAdjust() {
        return this.adjust_ != null;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public Adjust getAdjust() {
        Adjust adjust = this.adjust_;
        return adjust == null ? Adjust.getDefaultInstance() : adjust;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public AdjustOrBuilder getAdjustOrBuilder() {
        return getAdjust();
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public boolean hasFacebook() {
        return this.facebook_ != null;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public Facebook getFacebook() {
        Facebook facebook = this.facebook_;
        return facebook == null ? Facebook.getDefaultInstance() : facebook;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public FacebookOrBuilder getFacebookOrBuilder() {
        return getFacebook();
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public boolean hasFirebase() {
        return this.firebase_ != null;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public Firebase getFirebase() {
        Firebase firebase = this.firebase_;
        return firebase == null ? Firebase.getDefaultInstance() : firebase;
    }

    @Override // com.appodeal.ads.api.ServicesOrBuilder
    public FirebaseOrBuilder getFirebaseOrBuilder() {
        return getFirebase();
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
        if (this.appsflyer_ != null) {
            codedOutputStream.writeMessage(1, getAppsflyer());
        }
        if (this.adjust_ != null) {
            codedOutputStream.writeMessage(2, getAdjust());
        }
        if (this.facebook_ != null) {
            codedOutputStream.writeMessage(3, getFacebook());
        }
        if (this.firebase_ != null) {
            codedOutputStream.writeMessage(4, getFirebase());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeMessageSize = this.appsflyer_ != null ? CodedOutputStream.computeMessageSize(1, getAppsflyer()) : 0;
        if (this.adjust_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, getAdjust());
        }
        if (this.facebook_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(3, getFacebook());
        }
        if (this.firebase_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(4, getFirebase());
        }
        int serializedSize = computeMessageSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Services)) {
            return super.equals(obj);
        }
        Services services = (Services) obj;
        if (hasAppsflyer() != services.hasAppsflyer()) {
            return false;
        }
        if ((!hasAppsflyer() || getAppsflyer().equals(services.getAppsflyer())) && hasAdjust() == services.hasAdjust()) {
            if ((!hasAdjust() || getAdjust().equals(services.getAdjust())) && hasFacebook() == services.hasFacebook()) {
                if ((!hasFacebook() || getFacebook().equals(services.getFacebook())) && hasFirebase() == services.hasFirebase()) {
                    return (!hasFirebase() || getFirebase().equals(services.getFirebase())) && this.unknownFields.equals(services.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasAppsflyer()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAppsflyer().hashCode();
        }
        if (hasAdjust()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getAdjust().hashCode();
        }
        if (hasFacebook()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getFacebook().hashCode();
        }
        if (hasFirebase()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getFirebase().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    public static Services parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Services parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Services parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Services parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Services parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Services parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Services parseFrom(InputStream inputStream) throws IOException {
        return (Services) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Services parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Services) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Services parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Services) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Services parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Services) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Services parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Services) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Services parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Services) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Services services) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(services);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ServicesOrBuilder {
        private SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> adjustBuilder_;
        private Adjust adjust_;
        private SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> appsflyerBuilder_;
        private Appsflyer appsflyer_;
        private SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> facebookBuilder_;
        private Facebook facebook_;
        private SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> firebaseBuilder_;
        private Firebase firebase_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Services_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Services_fieldAccessorTable.ensureFieldAccessorsInitialized(Services.class, Builder.class);
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Services.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            if (this.appsflyerBuilder_ == null) {
                this.appsflyer_ = null;
            } else {
                this.appsflyer_ = null;
                this.appsflyerBuilder_ = null;
            }
            if (this.adjustBuilder_ == null) {
                this.adjust_ = null;
            } else {
                this.adjust_ = null;
                this.adjustBuilder_ = null;
            }
            if (this.facebookBuilder_ == null) {
                this.facebook_ = null;
            } else {
                this.facebook_ = null;
                this.facebookBuilder_ = null;
            }
            if (this.firebaseBuilder_ == null) {
                this.firebase_ = null;
            } else {
                this.firebase_ = null;
                this.firebaseBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Services_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Services getDefaultInstanceForType() {
            return Services.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Services build() {
            Services buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Services buildPartial() {
            Services services = new Services(this);
            SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> singleFieldBuilderV3 = this.appsflyerBuilder_;
            if (singleFieldBuilderV3 == null) {
                services.appsflyer_ = this.appsflyer_;
            } else {
                services.appsflyer_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> singleFieldBuilderV32 = this.adjustBuilder_;
            if (singleFieldBuilderV32 == null) {
                services.adjust_ = this.adjust_;
            } else {
                services.adjust_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> singleFieldBuilderV33 = this.facebookBuilder_;
            if (singleFieldBuilderV33 == null) {
                services.facebook_ = this.facebook_;
            } else {
                services.facebook_ = singleFieldBuilderV33.build();
            }
            SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> singleFieldBuilderV34 = this.firebaseBuilder_;
            if (singleFieldBuilderV34 == null) {
                services.firebase_ = this.firebase_;
            } else {
                services.firebase_ = singleFieldBuilderV34.build();
            }
            onBuilt();
            return services;
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
            if (message instanceof Services) {
                return mergeFrom((Services) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Services services) {
            if (services == Services.getDefaultInstance()) {
                return this;
            }
            if (services.hasAppsflyer()) {
                mergeAppsflyer(services.getAppsflyer());
            }
            if (services.hasAdjust()) {
                mergeAdjust(services.getAdjust());
            }
            if (services.hasFacebook()) {
                mergeFacebook(services.getFacebook());
            }
            if (services.hasFirebase()) {
                mergeFirebase(services.getFirebase());
            }
            mergeUnknownFields(services.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Services.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Services.access$5300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Services r3 = (com.appodeal.ads.api.Services) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Services r4 = (com.appodeal.ads.api.Services) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Services.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Services$Builder");
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public boolean hasAppsflyer() {
            return (this.appsflyerBuilder_ == null && this.appsflyer_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public Appsflyer getAppsflyer() {
            SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> singleFieldBuilderV3 = this.appsflyerBuilder_;
            if (singleFieldBuilderV3 == null) {
                Appsflyer appsflyer = this.appsflyer_;
                return appsflyer == null ? Appsflyer.getDefaultInstance() : appsflyer;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setAppsflyer(Appsflyer appsflyer) {
            SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> singleFieldBuilderV3 = this.appsflyerBuilder_;
            if (singleFieldBuilderV3 == null) {
                appsflyer.getClass();
                this.appsflyer_ = appsflyer;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(appsflyer);
            }
            return this;
        }

        public Builder setAppsflyer(Appsflyer.Builder builder) {
            SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> singleFieldBuilderV3 = this.appsflyerBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.appsflyer_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeAppsflyer(Appsflyer appsflyer) {
            SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> singleFieldBuilderV3 = this.appsflyerBuilder_;
            if (singleFieldBuilderV3 == null) {
                Appsflyer appsflyer2 = this.appsflyer_;
                if (appsflyer2 != null) {
                    this.appsflyer_ = Appsflyer.newBuilder(appsflyer2).mergeFrom(appsflyer).buildPartial();
                } else {
                    this.appsflyer_ = appsflyer;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(appsflyer);
            }
            return this;
        }

        public Builder clearAppsflyer() {
            if (this.appsflyerBuilder_ == null) {
                this.appsflyer_ = null;
                onChanged();
            } else {
                this.appsflyer_ = null;
                this.appsflyerBuilder_ = null;
            }
            return this;
        }

        public Appsflyer.Builder getAppsflyerBuilder() {
            onChanged();
            return getAppsflyerFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public AppsflyerOrBuilder getAppsflyerOrBuilder() {
            SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> singleFieldBuilderV3 = this.appsflyerBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Appsflyer appsflyer = this.appsflyer_;
            return appsflyer == null ? Appsflyer.getDefaultInstance() : appsflyer;
        }

        private SingleFieldBuilderV3<Appsflyer, Appsflyer.Builder, AppsflyerOrBuilder> getAppsflyerFieldBuilder() {
            if (this.appsflyerBuilder_ == null) {
                this.appsflyerBuilder_ = new SingleFieldBuilderV3<>(getAppsflyer(), getParentForChildren(), isClean());
                this.appsflyer_ = null;
            }
            return this.appsflyerBuilder_;
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public boolean hasAdjust() {
            return (this.adjustBuilder_ == null && this.adjust_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public Adjust getAdjust() {
            SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> singleFieldBuilderV3 = this.adjustBuilder_;
            if (singleFieldBuilderV3 == null) {
                Adjust adjust = this.adjust_;
                return adjust == null ? Adjust.getDefaultInstance() : adjust;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setAdjust(Adjust adjust) {
            SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> singleFieldBuilderV3 = this.adjustBuilder_;
            if (singleFieldBuilderV3 == null) {
                adjust.getClass();
                this.adjust_ = adjust;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(adjust);
            }
            return this;
        }

        public Builder setAdjust(Adjust.Builder builder) {
            SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> singleFieldBuilderV3 = this.adjustBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.adjust_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeAdjust(Adjust adjust) {
            SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> singleFieldBuilderV3 = this.adjustBuilder_;
            if (singleFieldBuilderV3 == null) {
                Adjust adjust2 = this.adjust_;
                if (adjust2 != null) {
                    this.adjust_ = Adjust.newBuilder(adjust2).mergeFrom(adjust).buildPartial();
                } else {
                    this.adjust_ = adjust;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(adjust);
            }
            return this;
        }

        public Builder clearAdjust() {
            if (this.adjustBuilder_ == null) {
                this.adjust_ = null;
                onChanged();
            } else {
                this.adjust_ = null;
                this.adjustBuilder_ = null;
            }
            return this;
        }

        public Adjust.Builder getAdjustBuilder() {
            onChanged();
            return getAdjustFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public AdjustOrBuilder getAdjustOrBuilder() {
            SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> singleFieldBuilderV3 = this.adjustBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Adjust adjust = this.adjust_;
            return adjust == null ? Adjust.getDefaultInstance() : adjust;
        }

        private SingleFieldBuilderV3<Adjust, Adjust.Builder, AdjustOrBuilder> getAdjustFieldBuilder() {
            if (this.adjustBuilder_ == null) {
                this.adjustBuilder_ = new SingleFieldBuilderV3<>(getAdjust(), getParentForChildren(), isClean());
                this.adjust_ = null;
            }
            return this.adjustBuilder_;
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public boolean hasFacebook() {
            return (this.facebookBuilder_ == null && this.facebook_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public Facebook getFacebook() {
            SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> singleFieldBuilderV3 = this.facebookBuilder_;
            if (singleFieldBuilderV3 == null) {
                Facebook facebook = this.facebook_;
                return facebook == null ? Facebook.getDefaultInstance() : facebook;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setFacebook(Facebook facebook) {
            SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> singleFieldBuilderV3 = this.facebookBuilder_;
            if (singleFieldBuilderV3 == null) {
                facebook.getClass();
                this.facebook_ = facebook;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(facebook);
            }
            return this;
        }

        public Builder setFacebook(Facebook.Builder builder) {
            SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> singleFieldBuilderV3 = this.facebookBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.facebook_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeFacebook(Facebook facebook) {
            SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> singleFieldBuilderV3 = this.facebookBuilder_;
            if (singleFieldBuilderV3 == null) {
                Facebook facebook2 = this.facebook_;
                if (facebook2 != null) {
                    this.facebook_ = Facebook.newBuilder(facebook2).mergeFrom(facebook).buildPartial();
                } else {
                    this.facebook_ = facebook;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(facebook);
            }
            return this;
        }

        public Builder clearFacebook() {
            if (this.facebookBuilder_ == null) {
                this.facebook_ = null;
                onChanged();
            } else {
                this.facebook_ = null;
                this.facebookBuilder_ = null;
            }
            return this;
        }

        public Facebook.Builder getFacebookBuilder() {
            onChanged();
            return getFacebookFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public FacebookOrBuilder getFacebookOrBuilder() {
            SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> singleFieldBuilderV3 = this.facebookBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Facebook facebook = this.facebook_;
            return facebook == null ? Facebook.getDefaultInstance() : facebook;
        }

        private SingleFieldBuilderV3<Facebook, Facebook.Builder, FacebookOrBuilder> getFacebookFieldBuilder() {
            if (this.facebookBuilder_ == null) {
                this.facebookBuilder_ = new SingleFieldBuilderV3<>(getFacebook(), getParentForChildren(), isClean());
                this.facebook_ = null;
            }
            return this.facebookBuilder_;
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public boolean hasFirebase() {
            return (this.firebaseBuilder_ == null && this.firebase_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public Firebase getFirebase() {
            SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> singleFieldBuilderV3 = this.firebaseBuilder_;
            if (singleFieldBuilderV3 == null) {
                Firebase firebase = this.firebase_;
                return firebase == null ? Firebase.getDefaultInstance() : firebase;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setFirebase(Firebase firebase) {
            SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> singleFieldBuilderV3 = this.firebaseBuilder_;
            if (singleFieldBuilderV3 == null) {
                firebase.getClass();
                this.firebase_ = firebase;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(firebase);
            }
            return this;
        }

        public Builder setFirebase(Firebase.Builder builder) {
            SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> singleFieldBuilderV3 = this.firebaseBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.firebase_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeFirebase(Firebase firebase) {
            SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> singleFieldBuilderV3 = this.firebaseBuilder_;
            if (singleFieldBuilderV3 == null) {
                Firebase firebase2 = this.firebase_;
                if (firebase2 != null) {
                    this.firebase_ = Firebase.newBuilder(firebase2).mergeFrom(firebase).buildPartial();
                } else {
                    this.firebase_ = firebase;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(firebase);
            }
            return this;
        }

        public Builder clearFirebase() {
            if (this.firebaseBuilder_ == null) {
                this.firebase_ = null;
                onChanged();
            } else {
                this.firebase_ = null;
                this.firebaseBuilder_ = null;
            }
            return this;
        }

        public Firebase.Builder getFirebaseBuilder() {
            onChanged();
            return getFirebaseFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.ServicesOrBuilder
        public FirebaseOrBuilder getFirebaseOrBuilder() {
            SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> singleFieldBuilderV3 = this.firebaseBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Firebase firebase = this.firebase_;
            return firebase == null ? Firebase.getDefaultInstance() : firebase;
        }

        private SingleFieldBuilderV3<Firebase, Firebase.Builder, FirebaseOrBuilder> getFirebaseFieldBuilder() {
            if (this.firebaseBuilder_ == null) {
                this.firebaseBuilder_ = new SingleFieldBuilderV3<>(getFirebase(), getParentForChildren(), isClean());
                this.firebase_ = null;
            }
            return this.firebaseBuilder_;
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

    public static Services getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Services> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Services> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Services getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
