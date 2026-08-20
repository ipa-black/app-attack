package io.bidmachine.protobuf;

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
import com.explorestack.protobuf.MapEntry;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class RequestTokenPayload extends GeneratedMessageV3 implements RequestTokenPayloadOrBuilder {
    public static final int APP_DATA_FIELD_NUMBER = 6;
    public static final int CUSTOM_DATA_FIELD_NUMBER = 4;
    public static final int DEVICE_DATA_FIELD_NUMBER = 3;
    public static final int PLACEMENT_DATA_FIELD_NUMBER = 1;
    public static final int SESSION_DATA_FIELD_NUMBER = 2;
    public static final int USER_DATA_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private AppData appData_;
    private MapField<String, String> customData_;
    private DeviceData deviceData_;
    private byte memoizedIsInitialized;
    private PlacementData placementData_;
    private SessionData sessionData_;
    private UserData userData_;
    private static final RequestTokenPayload DEFAULT_INSTANCE = new RequestTokenPayload();
    private static final Parser<RequestTokenPayload> PARSER = new AbstractParser<RequestTokenPayload>() { // from class: io.bidmachine.protobuf.RequestTokenPayload.1
        @Override // com.explorestack.protobuf.Parser
        public RequestTokenPayload parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new RequestTokenPayload(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes5.dex */
    public interface AppDataOrBuilder extends MessageOrBuilder {
        String getAppName();

        ByteString getAppNameBytes();

        String getAppVer();

        ByteString getAppVerBytes();
    }

    /* loaded from: classes5.dex */
    public interface DeviceDataOrBuilder extends MessageOrBuilder {
        String getAccess();

        ByteString getAccessBytes();

        boolean getAirplane();

        int getAtts();

        float getBatterylevel();

        boolean getBatterysaver();

        String getBmIfv();

        ByteString getBmIfvBytes();

        boolean getCharging();

        boolean getDarkmode();

        String getDevicename();

        ByteString getDevicenameBytes();

        long getDiskspace();

        boolean getDnd();

        boolean getHeadset();

        String getHeadsetname();

        ByteString getHeadsetnameBytes();

        String getIfv();

        ByteString getIfvBytes();

        String getInputlanguage(int i);

        ByteString getInputlanguageBytes(int i);

        int getInputlanguageCount();

        List<String> getInputlanguageList();

        boolean getJailbreak();

        long getLastbootup();

        boolean getRingmute();

        float getScreenbright();

        long getTime();

        long getTotaldisk();

        long getTotalmem();
    }

    /* loaded from: classes5.dex */
    public interface PlacementDataOrBuilder extends MessageOrBuilder {
        String getSdk();

        ByteString getSdkBytes();

        String getSdkver();

        ByteString getSdkverBytes();
    }

    /* loaded from: classes5.dex */
    public interface SessionDataOrBuilder extends MessageOrBuilder {
        boolean containsSessionPlacementData(String str);

        String getSessionId();

        ByteString getSessionIdBytes();

        @Deprecated
        Map<String, SessionData.SessionPlacementData> getSessionPlacementData();

        int getSessionPlacementDataCount();

        Map<String, SessionData.SessionPlacementData> getSessionPlacementDataMap();

        SessionData.SessionPlacementData getSessionPlacementDataOrDefault(String str, SessionData.SessionPlacementData sessionPlacementData);

        SessionData.SessionPlacementData getSessionPlacementDataOrThrow(String str);

        long getSessionduration();
    }

    /* loaded from: classes5.dex */
    public interface UserDataOrBuilder extends MessageOrBuilder {
        String getCcpa();

        ByteString getCcpaBytes();

        String getConsent();

        ByteString getConsentBytes();

        boolean getGdpr();
    }

    private RequestTokenPayload(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private RequestTokenPayload() {
        this.memoizedIsInitialized = (byte) -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new RequestTokenPayload();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    /* JADX WARN: Type inference failed for: r3v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    private RequestTokenPayload(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            PlacementData placementData = this.placementData_;
                            PlacementData.Builder builder = placementData != null ? placementData.toBuilder() : null;
                            PlacementData placementData2 = (PlacementData) codedInputStream.readMessage(PlacementData.parser(), extensionRegistryLite);
                            this.placementData_ = placementData2;
                            if (builder != null) {
                                builder.mergeFrom(placementData2);
                                this.placementData_ = builder.buildPartial();
                            }
                        } else if (readTag == 18) {
                            SessionData sessionData = this.sessionData_;
                            SessionData.Builder builder2 = sessionData != null ? sessionData.toBuilder() : null;
                            SessionData sessionData2 = (SessionData) codedInputStream.readMessage(SessionData.parser(), extensionRegistryLite);
                            this.sessionData_ = sessionData2;
                            if (builder2 != null) {
                                builder2.mergeFrom(sessionData2);
                                this.sessionData_ = builder2.buildPartial();
                            }
                        } else if (readTag == 26) {
                            DeviceData deviceData = this.deviceData_;
                            DeviceData.Builder builder3 = deviceData != null ? deviceData.toBuilder() : null;
                            DeviceData deviceData2 = (DeviceData) codedInputStream.readMessage(DeviceData.parser(), extensionRegistryLite);
                            this.deviceData_ = deviceData2;
                            if (builder3 != null) {
                                builder3.mergeFrom(deviceData2);
                                this.deviceData_ = builder3.buildPartial();
                            }
                        } else if (readTag == 34) {
                            boolean z3 = (z2 ? 1 : 0) & true;
                            z2 = z2;
                            if (!z3) {
                                this.customData_ = MapField.newMapField(CustomDataDefaultEntryHolder.defaultEntry);
                                z2 = true;
                            }
                            MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(CustomDataDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                            this.customData_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
                        } else if (readTag == 42) {
                            UserData userData = this.userData_;
                            UserData.Builder builder4 = userData != null ? userData.toBuilder() : null;
                            UserData userData2 = (UserData) codedInputStream.readMessage(UserData.parser(), extensionRegistryLite);
                            this.userData_ = userData2;
                            if (builder4 != null) {
                                builder4.mergeFrom(userData2);
                                this.userData_ = builder4.buildPartial();
                            }
                        } else if (readTag == 50) {
                            AppData appData = this.appData_;
                            AppData.Builder builder5 = appData != null ? appData.toBuilder() : null;
                            AppData appData2 = (AppData) codedInputStream.readMessage(AppData.parser(), extensionRegistryLite);
                            this.appData_ = appData2;
                            if (builder5 != null) {
                                builder5.mergeFrom(appData2);
                                this.appData_ = builder5.buildPartial();
                            }
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
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected MapField internalGetMapField(int i) {
        if (i == 4) {
            return internalGetCustomData();
        }
        throw new RuntimeException("Invalid map field number: " + i);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestTokenPayload.class, Builder.class);
    }

    /* loaded from: classes5.dex */
    public static final class PlacementData extends GeneratedMessageV3 implements PlacementDataOrBuilder {
        private static final PlacementData DEFAULT_INSTANCE = new PlacementData();
        private static final Parser<PlacementData> PARSER = new AbstractParser<PlacementData>() { // from class: io.bidmachine.protobuf.RequestTokenPayload.PlacementData.1
            @Override // com.explorestack.protobuf.Parser
            public PlacementData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new PlacementData(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SDKVER_FIELD_NUMBER = 2;
        public static final int SDK_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object sdk_;
        private volatile Object sdkver_;

        private PlacementData(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private PlacementData() {
            this.memoizedIsInitialized = (byte) -1;
            this.sdk_ = "";
            this.sdkver_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new PlacementData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private PlacementData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    this.sdk_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.sdkver_ = codedInputStream.readStringRequireUtf8();
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
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_fieldAccessorTable.ensureFieldAccessorsInitialized(PlacementData.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
        public String getSdk() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sdk_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
        public ByteString getSdkBytes() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdk_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
        public String getSdkver() {
            Object obj = this.sdkver_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sdkver_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
        public ByteString getSdkverBytes() {
            Object obj = this.sdkver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdkver_ = copyFromUtf8;
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
            if (!getSdkBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.sdk_);
            }
            if (!getSdkverBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.sdkver_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getSdkBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.sdk_) : 0;
            if (!getSdkverBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.sdkver_);
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
            if (!(obj instanceof PlacementData)) {
                return super.equals(obj);
            }
            PlacementData placementData = (PlacementData) obj;
            return getSdk().equals(placementData.getSdk()) && getSdkver().equals(placementData.getSdkver()) && this.unknownFields.equals(placementData.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSdk().hashCode()) * 37) + 2) * 53) + getSdkver().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static PlacementData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static PlacementData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static PlacementData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static PlacementData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static PlacementData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static PlacementData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static PlacementData parseFrom(InputStream inputStream) throws IOException {
            return (PlacementData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static PlacementData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PlacementData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PlacementData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PlacementData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PlacementData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PlacementData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static PlacementData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (PlacementData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static PlacementData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (PlacementData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(PlacementData placementData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(placementData);
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PlacementDataOrBuilder {
            private Object sdk_;
            private Object sdkver_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_fieldAccessorTable.ensureFieldAccessorsInitialized(PlacementData.class, Builder.class);
            }

            private Builder() {
                this.sdk_ = "";
                this.sdkver_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.sdk_ = "";
                this.sdkver_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = PlacementData.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.sdk_ = "";
                this.sdkver_ = "";
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public PlacementData getDefaultInstanceForType() {
                return PlacementData.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public PlacementData build() {
                PlacementData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public PlacementData buildPartial() {
                PlacementData placementData = new PlacementData(this);
                placementData.sdk_ = this.sdk_;
                placementData.sdkver_ = this.sdkver_;
                onBuilt();
                return placementData;
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
                if (message instanceof PlacementData) {
                    return mergeFrom((PlacementData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(PlacementData placementData) {
                if (placementData == PlacementData.getDefaultInstance()) {
                    return this;
                }
                if (!placementData.getSdk().isEmpty()) {
                    this.sdk_ = placementData.sdk_;
                    onChanged();
                }
                if (!placementData.getSdkver().isEmpty()) {
                    this.sdkver_ = placementData.sdkver_;
                    onChanged();
                }
                mergeUnknownFields(placementData.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.RequestTokenPayload.PlacementData.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.RequestTokenPayload.PlacementData.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.RequestTokenPayload$PlacementData r3 = (io.bidmachine.protobuf.RequestTokenPayload.PlacementData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.RequestTokenPayload$PlacementData r4 = (io.bidmachine.protobuf.RequestTokenPayload.PlacementData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestTokenPayload.PlacementData.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestTokenPayload$PlacementData$Builder");
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
            public String getSdk() {
                Object obj = this.sdk_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.sdk_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
            public ByteString getSdkBytes() {
                Object obj = this.sdk_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sdk_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSdk(String str) {
                str.getClass();
                this.sdk_ = str;
                onChanged();
                return this;
            }

            public Builder clearSdk() {
                this.sdk_ = PlacementData.getDefaultInstance().getSdk();
                onChanged();
                return this;
            }

            public Builder setSdkBytes(ByteString byteString) {
                byteString.getClass();
                PlacementData.checkByteStringIsUtf8(byteString);
                this.sdk_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
            public String getSdkver() {
                Object obj = this.sdkver_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.sdkver_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.PlacementDataOrBuilder
            public ByteString getSdkverBytes() {
                Object obj = this.sdkver_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sdkver_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSdkver(String str) {
                str.getClass();
                this.sdkver_ = str;
                onChanged();
                return this;
            }

            public Builder clearSdkver() {
                this.sdkver_ = PlacementData.getDefaultInstance().getSdkver();
                onChanged();
                return this;
            }

            public Builder setSdkverBytes(ByteString byteString) {
                byteString.getClass();
                PlacementData.checkByteStringIsUtf8(byteString);
                this.sdkver_ = byteString;
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

        public static PlacementData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<PlacementData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<PlacementData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public PlacementData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes5.dex */
    public static final class SessionData extends GeneratedMessageV3 implements SessionDataOrBuilder {
        private static final SessionData DEFAULT_INSTANCE = new SessionData();
        private static final Parser<SessionData> PARSER = new AbstractParser<SessionData>() { // from class: io.bidmachine.protobuf.RequestTokenPayload.SessionData.1
            @Override // com.explorestack.protobuf.Parser
            public SessionData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new SessionData(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int SESSIONDURATION_FIELD_NUMBER = 2;
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        public static final int SESSION_PLACEMENT_DATA_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private volatile Object sessionId_;
        private MapField<String, SessionPlacementData> sessionPlacementData_;
        private long sessionduration_;

        /* loaded from: classes5.dex */
        public interface SessionPlacementDataOrBuilder extends MessageOrBuilder {
            float getClickrate();

            float getCompletionrate();

            int getImpdepth();

            String getLastadomain();

            ByteString getLastadomainBytes();

            String getLastbundle();

            ByteString getLastbundleBytes();

            boolean getLastclick();
        }

        private SessionData(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private SessionData() {
            this.memoizedIsInitialized = (byte) -1;
            this.sessionId_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new SessionData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object] */
        private SessionData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    this.sessionId_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 16) {
                                    this.sessionduration_ = codedInputStream.readUInt64();
                                } else if (readTag == 26) {
                                    if (!(z2 & true)) {
                                        this.sessionPlacementData_ = MapField.newMapField(SessionPlacementDataDefaultEntryHolder.defaultEntry);
                                        z2 = true;
                                    }
                                    MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(SessionPlacementDataDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                    this.sessionPlacementData_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
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
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i) {
            if (i == 3) {
                return internalGetSessionPlacementData();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_fieldAccessorTable.ensureFieldAccessorsInitialized(SessionData.class, Builder.class);
        }

        /* loaded from: classes5.dex */
        public static final class SessionPlacementData extends GeneratedMessageV3 implements SessionPlacementDataOrBuilder {
            public static final int CLICKRATE_FIELD_NUMBER = 5;
            public static final int COMPLETIONRATE_FIELD_NUMBER = 7;
            public static final int IMPDEPTH_FIELD_NUMBER = 1;
            public static final int LASTADOMAIN_FIELD_NUMBER = 4;
            public static final int LASTBUNDLE_FIELD_NUMBER = 3;
            public static final int LASTCLICK_FIELD_NUMBER = 6;
            private static final long serialVersionUID = 0;
            private float clickrate_;
            private float completionrate_;
            private int impdepth_;
            private volatile Object lastadomain_;
            private volatile Object lastbundle_;
            private boolean lastclick_;
            private byte memoizedIsInitialized;
            private static final SessionPlacementData DEFAULT_INSTANCE = new SessionPlacementData();
            private static final Parser<SessionPlacementData> PARSER = new AbstractParser<SessionPlacementData>() { // from class: io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementData.1
                @Override // com.explorestack.protobuf.Parser
                public SessionPlacementData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new SessionPlacementData(codedInputStream, extensionRegistryLite);
                }
            };

            private SessionPlacementData(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            private SessionPlacementData() {
                this.memoizedIsInitialized = (byte) -1;
                this.lastbundle_ = "";
                this.lastadomain_ = "";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new SessionPlacementData();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            private SessionPlacementData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                extensionRegistryLite.getClass();
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    this.impdepth_ = codedInputStream.readUInt32();
                                } else if (readTag == 26) {
                                    this.lastbundle_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 34) {
                                    this.lastadomain_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 45) {
                                    this.clickrate_ = codedInputStream.readFloat();
                                } else if (readTag == 48) {
                                    this.lastclick_ = codedInputStream.readBool();
                                } else if (readTag == 61) {
                                    this.completionrate_ = codedInputStream.readFloat();
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
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_fieldAccessorTable.ensureFieldAccessorsInitialized(SessionPlacementData.class, Builder.class);
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public int getImpdepth() {
                return this.impdepth_;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public String getLastbundle() {
                Object obj = this.lastbundle_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastbundle_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public ByteString getLastbundleBytes() {
                Object obj = this.lastbundle_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.lastbundle_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public String getLastadomain() {
                Object obj = this.lastadomain_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastadomain_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public ByteString getLastadomainBytes() {
                Object obj = this.lastadomain_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.lastadomain_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public float getClickrate() {
                return this.clickrate_;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public boolean getLastclick() {
                return this.lastclick_;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
            public float getCompletionrate() {
                return this.completionrate_;
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
                int i = this.impdepth_;
                if (i != 0) {
                    codedOutputStream.writeUInt32(1, i);
                }
                if (!getLastbundleBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.lastbundle_);
                }
                if (!getLastadomainBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.lastadomain_);
                }
                float f2 = this.clickrate_;
                if (f2 != 0.0f) {
                    codedOutputStream.writeFloat(5, f2);
                }
                boolean z = this.lastclick_;
                if (z) {
                    codedOutputStream.writeBool(6, z);
                }
                float f3 = this.completionrate_;
                if (f3 != 0.0f) {
                    codedOutputStream.writeFloat(7, f3);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int i2 = this.impdepth_;
                int computeUInt32Size = i2 != 0 ? CodedOutputStream.computeUInt32Size(1, i2) : 0;
                if (!getLastbundleBytes().isEmpty()) {
                    computeUInt32Size += GeneratedMessageV3.computeStringSize(3, this.lastbundle_);
                }
                if (!getLastadomainBytes().isEmpty()) {
                    computeUInt32Size += GeneratedMessageV3.computeStringSize(4, this.lastadomain_);
                }
                float f2 = this.clickrate_;
                if (f2 != 0.0f) {
                    computeUInt32Size += CodedOutputStream.computeFloatSize(5, f2);
                }
                boolean z = this.lastclick_;
                if (z) {
                    computeUInt32Size += CodedOutputStream.computeBoolSize(6, z);
                }
                float f3 = this.completionrate_;
                if (f3 != 0.0f) {
                    computeUInt32Size += CodedOutputStream.computeFloatSize(7, f3);
                }
                int serializedSize = computeUInt32Size + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof SessionPlacementData)) {
                    return super.equals(obj);
                }
                SessionPlacementData sessionPlacementData = (SessionPlacementData) obj;
                return getImpdepth() == sessionPlacementData.getImpdepth() && getLastbundle().equals(sessionPlacementData.getLastbundle()) && getLastadomain().equals(sessionPlacementData.getLastadomain()) && Float.floatToIntBits(getClickrate()) == Float.floatToIntBits(sessionPlacementData.getClickrate()) && getLastclick() == sessionPlacementData.getLastclick() && Float.floatToIntBits(getCompletionrate()) == Float.floatToIntBits(sessionPlacementData.getCompletionrate()) && this.unknownFields.equals(sessionPlacementData.unknownFields);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getImpdepth()) * 37) + 3) * 53) + getLastbundle().hashCode()) * 37) + 4) * 53) + getLastadomain().hashCode()) * 37) + 5) * 53) + Float.floatToIntBits(getClickrate())) * 37) + 6) * 53) + Internal.hashBoolean(getLastclick())) * 37) + 7) * 53) + Float.floatToIntBits(getCompletionrate())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            public static SessionPlacementData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static SessionPlacementData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static SessionPlacementData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static SessionPlacementData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static SessionPlacementData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static SessionPlacementData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static SessionPlacementData parseFrom(InputStream inputStream) throws IOException {
                return (SessionPlacementData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static SessionPlacementData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (SessionPlacementData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static SessionPlacementData parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (SessionPlacementData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static SessionPlacementData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (SessionPlacementData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static SessionPlacementData parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (SessionPlacementData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static SessionPlacementData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (SessionPlacementData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(SessionPlacementData sessionPlacementData) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(sessionPlacementData);
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

            /* loaded from: classes5.dex */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SessionPlacementDataOrBuilder {
                private float clickrate_;
                private float completionrate_;
                private int impdepth_;
                private Object lastadomain_;
                private Object lastbundle_;
                private boolean lastclick_;

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_descriptor;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_fieldAccessorTable.ensureFieldAccessorsInitialized(SessionPlacementData.class, Builder.class);
                }

                private Builder() {
                    this.lastbundle_ = "";
                    this.lastadomain_ = "";
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.lastbundle_ = "";
                    this.lastadomain_ = "";
                    maybeForceBuilderInitialization();
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = SessionPlacementData.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.impdepth_ = 0;
                    this.lastbundle_ = "";
                    this.lastadomain_ = "";
                    this.clickrate_ = 0.0f;
                    this.lastclick_ = false;
                    this.completionrate_ = 0.0f;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_descriptor;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public SessionPlacementData getDefaultInstanceForType() {
                    return SessionPlacementData.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public SessionPlacementData build() {
                    SessionPlacementData buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public SessionPlacementData buildPartial() {
                    SessionPlacementData sessionPlacementData = new SessionPlacementData(this);
                    sessionPlacementData.impdepth_ = this.impdepth_;
                    sessionPlacementData.lastbundle_ = this.lastbundle_;
                    sessionPlacementData.lastadomain_ = this.lastadomain_;
                    sessionPlacementData.clickrate_ = this.clickrate_;
                    sessionPlacementData.lastclick_ = this.lastclick_;
                    sessionPlacementData.completionrate_ = this.completionrate_;
                    onBuilt();
                    return sessionPlacementData;
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
                    if (message instanceof SessionPlacementData) {
                        return mergeFrom((SessionPlacementData) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(SessionPlacementData sessionPlacementData) {
                    if (sessionPlacementData == SessionPlacementData.getDefaultInstance()) {
                        return this;
                    }
                    if (sessionPlacementData.getImpdepth() != 0) {
                        setImpdepth(sessionPlacementData.getImpdepth());
                    }
                    if (!sessionPlacementData.getLastbundle().isEmpty()) {
                        this.lastbundle_ = sessionPlacementData.lastbundle_;
                        onChanged();
                    }
                    if (!sessionPlacementData.getLastadomain().isEmpty()) {
                        this.lastadomain_ = sessionPlacementData.lastadomain_;
                        onChanged();
                    }
                    if (sessionPlacementData.getClickrate() != 0.0f) {
                        setClickrate(sessionPlacementData.getClickrate());
                    }
                    if (sessionPlacementData.getLastclick()) {
                        setLastclick(sessionPlacementData.getLastclick());
                    }
                    if (sessionPlacementData.getCompletionrate() != 0.0f) {
                        setCompletionrate(sessionPlacementData.getCompletionrate());
                    }
                    mergeUnknownFields(sessionPlacementData.unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementData.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementData.access$2200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.RequestTokenPayload$SessionData$SessionPlacementData r3 = (io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.RequestTokenPayload$SessionData$SessionPlacementData r4 = (io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementData) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementData.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestTokenPayload$SessionData$SessionPlacementData$Builder");
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public int getImpdepth() {
                    return this.impdepth_;
                }

                public Builder setImpdepth(int i) {
                    this.impdepth_ = i;
                    onChanged();
                    return this;
                }

                public Builder clearImpdepth() {
                    this.impdepth_ = 0;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public String getLastbundle() {
                    Object obj = this.lastbundle_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.lastbundle_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public ByteString getLastbundleBytes() {
                    Object obj = this.lastbundle_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.lastbundle_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setLastbundle(String str) {
                    str.getClass();
                    this.lastbundle_ = str;
                    onChanged();
                    return this;
                }

                public Builder clearLastbundle() {
                    this.lastbundle_ = SessionPlacementData.getDefaultInstance().getLastbundle();
                    onChanged();
                    return this;
                }

                public Builder setLastbundleBytes(ByteString byteString) {
                    byteString.getClass();
                    SessionPlacementData.checkByteStringIsUtf8(byteString);
                    this.lastbundle_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public String getLastadomain() {
                    Object obj = this.lastadomain_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.lastadomain_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public ByteString getLastadomainBytes() {
                    Object obj = this.lastadomain_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.lastadomain_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                public Builder setLastadomain(String str) {
                    str.getClass();
                    this.lastadomain_ = str;
                    onChanged();
                    return this;
                }

                public Builder clearLastadomain() {
                    this.lastadomain_ = SessionPlacementData.getDefaultInstance().getLastadomain();
                    onChanged();
                    return this;
                }

                public Builder setLastadomainBytes(ByteString byteString) {
                    byteString.getClass();
                    SessionPlacementData.checkByteStringIsUtf8(byteString);
                    this.lastadomain_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public float getClickrate() {
                    return this.clickrate_;
                }

                public Builder setClickrate(float f2) {
                    this.clickrate_ = f2;
                    onChanged();
                    return this;
                }

                public Builder clearClickrate() {
                    this.clickrate_ = 0.0f;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public boolean getLastclick() {
                    return this.lastclick_;
                }

                public Builder setLastclick(boolean z) {
                    this.lastclick_ = z;
                    onChanged();
                    return this;
                }

                public Builder clearLastclick() {
                    this.lastclick_ = false;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionData.SessionPlacementDataOrBuilder
                public float getCompletionrate() {
                    return this.completionrate_;
                }

                public Builder setCompletionrate(float f2) {
                    this.completionrate_ = f2;
                    onChanged();
                    return this;
                }

                public Builder clearCompletionrate() {
                    this.completionrate_ = 0.0f;
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

            public static SessionPlacementData getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<SessionPlacementData> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Parser<SessionPlacementData> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public SessionPlacementData getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public String getSessionId() {
            Object obj = this.sessionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sessionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public ByteString getSessionIdBytes() {
            Object obj = this.sessionId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public long getSessionduration() {
            return this.sessionduration_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public static final class SessionPlacementDataDefaultEntryHolder {
            static final MapEntry<String, SessionPlacementData> defaultEntry = MapEntry.newDefaultInstance(CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementDataEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, SessionPlacementData.getDefaultInstance());

            private SessionPlacementDataDefaultEntryHolder() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, SessionPlacementData> internalGetSessionPlacementData() {
            MapField<String, SessionPlacementData> mapField = this.sessionPlacementData_;
            return mapField == null ? MapField.emptyMapField(SessionPlacementDataDefaultEntryHolder.defaultEntry) : mapField;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public int getSessionPlacementDataCount() {
            return internalGetSessionPlacementData().getMap().size();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public boolean containsSessionPlacementData(String str) {
            str.getClass();
            return internalGetSessionPlacementData().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        @Deprecated
        public Map<String, SessionPlacementData> getSessionPlacementData() {
            return getSessionPlacementDataMap();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public Map<String, SessionPlacementData> getSessionPlacementDataMap() {
            return internalGetSessionPlacementData().getMap();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public SessionPlacementData getSessionPlacementDataOrDefault(String str, SessionPlacementData sessionPlacementData) {
            str.getClass();
            Map<String, SessionPlacementData> map = internalGetSessionPlacementData().getMap();
            return map.containsKey(str) ? map.get(str) : sessionPlacementData;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
        public SessionPlacementData getSessionPlacementDataOrThrow(String str) {
            str.getClass();
            Map<String, SessionPlacementData> map = internalGetSessionPlacementData().getMap();
            if (!map.containsKey(str)) {
                throw new IllegalArgumentException();
            }
            return map.get(str);
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
            if (!getSessionIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.sessionId_);
            }
            long j = this.sessionduration_;
            if (j != 0) {
                codedOutputStream.writeUInt64(2, j);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetSessionPlacementData(), SessionPlacementDataDefaultEntryHolder.defaultEntry, 3);
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getSessionIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.sessionId_) : 0;
            long j = this.sessionduration_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeUInt64Size(2, j);
            }
            for (Map.Entry<String, SessionPlacementData> entry : internalGetSessionPlacementData().getMap().entrySet()) {
                computeStringSize += CodedOutputStream.computeMessageSize(3, SessionPlacementDataDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
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
            if (!(obj instanceof SessionData)) {
                return super.equals(obj);
            }
            SessionData sessionData = (SessionData) obj;
            return getSessionId().equals(sessionData.getSessionId()) && getSessionduration() == sessionData.getSessionduration() && internalGetSessionPlacementData().equals(sessionData.internalGetSessionPlacementData()) && this.unknownFields.equals(sessionData.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSessionId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getSessionduration());
            if (!internalGetSessionPlacementData().getMap().isEmpty()) {
                hashCode = (((hashCode * 37) + 3) * 53) + internalGetSessionPlacementData().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public static SessionData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static SessionData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static SessionData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static SessionData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static SessionData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static SessionData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static SessionData parseFrom(InputStream inputStream) throws IOException {
            return (SessionData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static SessionData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SessionData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static SessionData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SessionData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SessionData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SessionData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static SessionData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SessionData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static SessionData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SessionData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(SessionData sessionData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(sessionData);
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SessionDataOrBuilder {
            private int bitField0_;
            private Object sessionId_;
            private MapField<String, SessionPlacementData> sessionPlacementData_;
            private long sessionduration_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMapField(int i) {
                if (i == 3) {
                    return internalGetSessionPlacementData();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected MapField internalGetMutableMapField(int i) {
                if (i == 3) {
                    return internalGetMutableSessionPlacementData();
                }
                throw new RuntimeException("Invalid map field number: " + i);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_fieldAccessorTable.ensureFieldAccessorsInitialized(SessionData.class, Builder.class);
            }

            private Builder() {
                this.sessionId_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.sessionId_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = SessionData.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.sessionId_ = "";
                this.sessionduration_ = 0L;
                internalGetMutableSessionPlacementData().clear();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public SessionData getDefaultInstanceForType() {
                return SessionData.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public SessionData build() {
                SessionData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public SessionData buildPartial() {
                SessionData sessionData = new SessionData(this);
                sessionData.sessionId_ = this.sessionId_;
                sessionData.sessionduration_ = this.sessionduration_;
                sessionData.sessionPlacementData_ = internalGetSessionPlacementData();
                sessionData.sessionPlacementData_.makeImmutable();
                onBuilt();
                return sessionData;
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
                if (message instanceof SessionData) {
                    return mergeFrom((SessionData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(SessionData sessionData) {
                if (sessionData == SessionData.getDefaultInstance()) {
                    return this;
                }
                if (!sessionData.getSessionId().isEmpty()) {
                    this.sessionId_ = sessionData.sessionId_;
                    onChanged();
                }
                if (sessionData.getSessionduration() != 0) {
                    setSessionduration(sessionData.getSessionduration());
                }
                internalGetMutableSessionPlacementData().mergeFrom(sessionData.internalGetSessionPlacementData());
                mergeUnknownFields(sessionData.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.RequestTokenPayload.SessionData.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.RequestTokenPayload.SessionData.access$3500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.RequestTokenPayload$SessionData r3 = (io.bidmachine.protobuf.RequestTokenPayload.SessionData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.RequestTokenPayload$SessionData r4 = (io.bidmachine.protobuf.RequestTokenPayload.SessionData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestTokenPayload.SessionData.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestTokenPayload$SessionData$Builder");
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public String getSessionId() {
                Object obj = this.sessionId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.sessionId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public ByteString getSessionIdBytes() {
                Object obj = this.sessionId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.sessionId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setSessionId(String str) {
                str.getClass();
                this.sessionId_ = str;
                onChanged();
                return this;
            }

            public Builder clearSessionId() {
                this.sessionId_ = SessionData.getDefaultInstance().getSessionId();
                onChanged();
                return this;
            }

            public Builder setSessionIdBytes(ByteString byteString) {
                byteString.getClass();
                SessionData.checkByteStringIsUtf8(byteString);
                this.sessionId_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public long getSessionduration() {
                return this.sessionduration_;
            }

            public Builder setSessionduration(long j) {
                this.sessionduration_ = j;
                onChanged();
                return this;
            }

            public Builder clearSessionduration() {
                this.sessionduration_ = 0L;
                onChanged();
                return this;
            }

            private MapField<String, SessionPlacementData> internalGetSessionPlacementData() {
                MapField<String, SessionPlacementData> mapField = this.sessionPlacementData_;
                return mapField == null ? MapField.emptyMapField(SessionPlacementDataDefaultEntryHolder.defaultEntry) : mapField;
            }

            private MapField<String, SessionPlacementData> internalGetMutableSessionPlacementData() {
                onChanged();
                if (this.sessionPlacementData_ == null) {
                    this.sessionPlacementData_ = MapField.newMapField(SessionPlacementDataDefaultEntryHolder.defaultEntry);
                }
                if (!this.sessionPlacementData_.isMutable()) {
                    this.sessionPlacementData_ = this.sessionPlacementData_.copy();
                }
                return this.sessionPlacementData_;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public int getSessionPlacementDataCount() {
                return internalGetSessionPlacementData().getMap().size();
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public boolean containsSessionPlacementData(String str) {
                str.getClass();
                return internalGetSessionPlacementData().getMap().containsKey(str);
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            @Deprecated
            public Map<String, SessionPlacementData> getSessionPlacementData() {
                return getSessionPlacementDataMap();
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public Map<String, SessionPlacementData> getSessionPlacementDataMap() {
                return internalGetSessionPlacementData().getMap();
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public SessionPlacementData getSessionPlacementDataOrDefault(String str, SessionPlacementData sessionPlacementData) {
                str.getClass();
                Map<String, SessionPlacementData> map = internalGetSessionPlacementData().getMap();
                return map.containsKey(str) ? map.get(str) : sessionPlacementData;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.SessionDataOrBuilder
            public SessionPlacementData getSessionPlacementDataOrThrow(String str) {
                str.getClass();
                Map<String, SessionPlacementData> map = internalGetSessionPlacementData().getMap();
                if (!map.containsKey(str)) {
                    throw new IllegalArgumentException();
                }
                return map.get(str);
            }

            public Builder clearSessionPlacementData() {
                internalGetMutableSessionPlacementData().getMutableMap().clear();
                return this;
            }

            public Builder removeSessionPlacementData(String str) {
                str.getClass();
                internalGetMutableSessionPlacementData().getMutableMap().remove(str);
                return this;
            }

            @Deprecated
            public Map<String, SessionPlacementData> getMutableSessionPlacementData() {
                return internalGetMutableSessionPlacementData().getMutableMap();
            }

            public Builder putSessionPlacementData(String str, SessionPlacementData sessionPlacementData) {
                str.getClass();
                sessionPlacementData.getClass();
                internalGetMutableSessionPlacementData().getMutableMap().put(str, sessionPlacementData);
                return this;
            }

            public Builder putAllSessionPlacementData(Map<String, SessionPlacementData> map) {
                internalGetMutableSessionPlacementData().getMutableMap().putAll(map);
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

        public static SessionData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SessionData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<SessionData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public SessionData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes5.dex */
    public static final class DeviceData extends GeneratedMessageV3 implements DeviceDataOrBuilder {
        public static final int ACCESS_FIELD_NUMBER = 19;
        public static final int AIRPLANE_FIELD_NUMBER = 12;
        public static final int ATTS_FIELD_NUMBER = 22;
        public static final int BATTERYLEVEL_FIELD_NUMBER = 9;
        public static final int BATTERYSAVER_FIELD_NUMBER = 10;
        public static final int BM_IFV_FIELD_NUMBER = 2;
        public static final int CHARGING_FIELD_NUMBER = 7;
        public static final int DARKMODE_FIELD_NUMBER = 11;
        public static final int DEVICENAME_FIELD_NUMBER = 14;
        public static final int DISKSPACE_FIELD_NUMBER = 4;
        public static final int DND_FIELD_NUMBER = 13;
        public static final int HEADSETNAME_FIELD_NUMBER = 20;
        public static final int HEADSET_FIELD_NUMBER = 8;
        public static final int IFV_FIELD_NUMBER = 1;
        public static final int INPUTLANGUAGE_FIELD_NUMBER = 3;
        public static final int JAILBREAK_FIELD_NUMBER = 17;
        public static final int LASTBOOTUP_FIELD_NUMBER = 18;
        public static final int RINGMUTE_FIELD_NUMBER = 6;
        public static final int SCREENBRIGHT_FIELD_NUMBER = 16;
        public static final int TIME_FIELD_NUMBER = 15;
        public static final int TOTALDISK_FIELD_NUMBER = 5;
        public static final int TOTALMEM_FIELD_NUMBER = 21;
        private static final long serialVersionUID = 0;
        private volatile Object access_;
        private boolean airplane_;
        private int atts_;
        private float batterylevel_;
        private boolean batterysaver_;
        private volatile Object bmIfv_;
        private boolean charging_;
        private boolean darkmode_;
        private volatile Object devicename_;
        private long diskspace_;
        private boolean dnd_;
        private boolean headset_;
        private volatile Object headsetname_;
        private volatile Object ifv_;
        private LazyStringList inputlanguage_;
        private boolean jailbreak_;
        private long lastbootup_;
        private byte memoizedIsInitialized;
        private boolean ringmute_;
        private float screenbright_;
        private long time_;
        private long totaldisk_;
        private long totalmem_;
        private static final DeviceData DEFAULT_INSTANCE = new DeviceData();
        private static final Parser<DeviceData> PARSER = new AbstractParser<DeviceData>() { // from class: io.bidmachine.protobuf.RequestTokenPayload.DeviceData.1
            @Override // com.explorestack.protobuf.Parser
            public DeviceData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DeviceData(codedInputStream, extensionRegistryLite);
            }
        };

        private DeviceData(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private DeviceData() {
            this.memoizedIsInitialized = (byte) -1;
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.inputlanguage_ = LazyStringArrayList.EMPTY;
            this.devicename_ = "";
            this.access_ = "";
            this.headsetname_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new DeviceData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private DeviceData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            switch (readTag) {
                                case 0:
                                    break;
                                case 10:
                                    this.ifv_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 18:
                                    this.bmIfv_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 26:
                                    String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                    if (!(z2 & true)) {
                                        this.inputlanguage_ = new LazyStringArrayList();
                                        z2 = true;
                                    }
                                    this.inputlanguage_.add(readStringRequireUtf8);
                                    continue;
                                case 32:
                                    this.diskspace_ = codedInputStream.readUInt64();
                                    continue;
                                case 40:
                                    this.totaldisk_ = codedInputStream.readUInt64();
                                    continue;
                                case 48:
                                    this.ringmute_ = codedInputStream.readBool();
                                    continue;
                                case 56:
                                    this.charging_ = codedInputStream.readBool();
                                    continue;
                                case 64:
                                    this.headset_ = codedInputStream.readBool();
                                    continue;
                                case 77:
                                    this.batterylevel_ = codedInputStream.readFloat();
                                    continue;
                                case 80:
                                    this.batterysaver_ = codedInputStream.readBool();
                                    continue;
                                case 88:
                                    this.darkmode_ = codedInputStream.readBool();
                                    continue;
                                case 96:
                                    this.airplane_ = codedInputStream.readBool();
                                    continue;
                                case 104:
                                    this.dnd_ = codedInputStream.readBool();
                                    continue;
                                case 114:
                                    this.devicename_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 120:
                                    this.time_ = codedInputStream.readUInt64();
                                    continue;
                                case 133:
                                    this.screenbright_ = codedInputStream.readFloat();
                                    continue;
                                case 136:
                                    this.jailbreak_ = codedInputStream.readBool();
                                    continue;
                                case 144:
                                    this.lastbootup_ = codedInputStream.readUInt64();
                                    continue;
                                case 154:
                                    this.access_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 162:
                                    this.headsetname_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 168:
                                    this.totalmem_ = codedInputStream.readUInt64();
                                    continue;
                                case 176:
                                    this.atts_ = codedInputStream.readUInt32();
                                    continue;
                                default:
                                    if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        break;
                                    } else {
                                        continue;
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
                        this.inputlanguage_ = this.inputlanguage_.getUnmodifiableView();
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_fieldAccessorTable.ensureFieldAccessorsInitialized(DeviceData.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public String getIfv() {
            Object obj = this.ifv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ifv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public ByteString getIfvBytes() {
            Object obj = this.ifv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public String getBmIfv() {
            Object obj = this.bmIfv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bmIfv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public ByteString getBmIfvBytes() {
            Object obj = this.bmIfv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bmIfv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public ProtocolStringList getInputlanguageList() {
            return this.inputlanguage_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public int getInputlanguageCount() {
            return this.inputlanguage_.size();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public String getInputlanguage(int i) {
            return (String) this.inputlanguage_.get(i);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public ByteString getInputlanguageBytes(int i) {
            return this.inputlanguage_.getByteString(i);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public long getDiskspace() {
            return this.diskspace_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public long getTotaldisk() {
            return this.totaldisk_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getRingmute() {
            return this.ringmute_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getCharging() {
            return this.charging_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getHeadset() {
            return this.headset_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public float getBatterylevel() {
            return this.batterylevel_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getBatterysaver() {
            return this.batterysaver_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getDarkmode() {
            return this.darkmode_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getAirplane() {
            return this.airplane_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getDnd() {
            return this.dnd_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public String getDevicename() {
            Object obj = this.devicename_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.devicename_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public ByteString getDevicenameBytes() {
            Object obj = this.devicename_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.devicename_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public long getTime() {
            return this.time_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public float getScreenbright() {
            return this.screenbright_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public boolean getJailbreak() {
            return this.jailbreak_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public long getLastbootup() {
            return this.lastbootup_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public String getAccess() {
            Object obj = this.access_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.access_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public ByteString getAccessBytes() {
            Object obj = this.access_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.access_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public String getHeadsetname() {
            Object obj = this.headsetname_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.headsetname_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public ByteString getHeadsetnameBytes() {
            Object obj = this.headsetname_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.headsetname_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public long getTotalmem() {
            return this.totalmem_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
        public int getAtts() {
            return this.atts_;
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
            if (!getIfvBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.ifv_);
            }
            if (!getBmIfvBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.bmIfv_);
            }
            for (int i = 0; i < this.inputlanguage_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.inputlanguage_.getRaw(i));
            }
            long j = this.diskspace_;
            if (j != 0) {
                codedOutputStream.writeUInt64(4, j);
            }
            long j2 = this.totaldisk_;
            if (j2 != 0) {
                codedOutputStream.writeUInt64(5, j2);
            }
            boolean z = this.ringmute_;
            if (z) {
                codedOutputStream.writeBool(6, z);
            }
            boolean z2 = this.charging_;
            if (z2) {
                codedOutputStream.writeBool(7, z2);
            }
            boolean z3 = this.headset_;
            if (z3) {
                codedOutputStream.writeBool(8, z3);
            }
            float f2 = this.batterylevel_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(9, f2);
            }
            boolean z4 = this.batterysaver_;
            if (z4) {
                codedOutputStream.writeBool(10, z4);
            }
            boolean z5 = this.darkmode_;
            if (z5) {
                codedOutputStream.writeBool(11, z5);
            }
            boolean z6 = this.airplane_;
            if (z6) {
                codedOutputStream.writeBool(12, z6);
            }
            boolean z7 = this.dnd_;
            if (z7) {
                codedOutputStream.writeBool(13, z7);
            }
            if (!getDevicenameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 14, this.devicename_);
            }
            long j3 = this.time_;
            if (j3 != 0) {
                codedOutputStream.writeUInt64(15, j3);
            }
            float f3 = this.screenbright_;
            if (f3 != 0.0f) {
                codedOutputStream.writeFloat(16, f3);
            }
            boolean z8 = this.jailbreak_;
            if (z8) {
                codedOutputStream.writeBool(17, z8);
            }
            long j4 = this.lastbootup_;
            if (j4 != 0) {
                codedOutputStream.writeUInt64(18, j4);
            }
            if (!getAccessBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 19, this.access_);
            }
            if (!getHeadsetnameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 20, this.headsetname_);
            }
            long j5 = this.totalmem_;
            if (j5 != 0) {
                codedOutputStream.writeUInt64(21, j5);
            }
            int i2 = this.atts_;
            if (i2 != 0) {
                codedOutputStream.writeUInt32(22, i2);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getIfvBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.ifv_) : 0;
            if (!getBmIfvBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.bmIfv_);
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.inputlanguage_.size(); i3++) {
                i2 += computeStringSizeNoTag(this.inputlanguage_.getRaw(i3));
            }
            int size = computeStringSize + i2 + getInputlanguageList().size();
            long j = this.diskspace_;
            if (j != 0) {
                size += CodedOutputStream.computeUInt64Size(4, j);
            }
            long j2 = this.totaldisk_;
            if (j2 != 0) {
                size += CodedOutputStream.computeUInt64Size(5, j2);
            }
            boolean z = this.ringmute_;
            if (z) {
                size += CodedOutputStream.computeBoolSize(6, z);
            }
            boolean z2 = this.charging_;
            if (z2) {
                size += CodedOutputStream.computeBoolSize(7, z2);
            }
            boolean z3 = this.headset_;
            if (z3) {
                size += CodedOutputStream.computeBoolSize(8, z3);
            }
            float f2 = this.batterylevel_;
            if (f2 != 0.0f) {
                size += CodedOutputStream.computeFloatSize(9, f2);
            }
            boolean z4 = this.batterysaver_;
            if (z4) {
                size += CodedOutputStream.computeBoolSize(10, z4);
            }
            boolean z5 = this.darkmode_;
            if (z5) {
                size += CodedOutputStream.computeBoolSize(11, z5);
            }
            boolean z6 = this.airplane_;
            if (z6) {
                size += CodedOutputStream.computeBoolSize(12, z6);
            }
            boolean z7 = this.dnd_;
            if (z7) {
                size += CodedOutputStream.computeBoolSize(13, z7);
            }
            if (!getDevicenameBytes().isEmpty()) {
                size += GeneratedMessageV3.computeStringSize(14, this.devicename_);
            }
            long j3 = this.time_;
            if (j3 != 0) {
                size += CodedOutputStream.computeUInt64Size(15, j3);
            }
            float f3 = this.screenbright_;
            if (f3 != 0.0f) {
                size += CodedOutputStream.computeFloatSize(16, f3);
            }
            boolean z8 = this.jailbreak_;
            if (z8) {
                size += CodedOutputStream.computeBoolSize(17, z8);
            }
            long j4 = this.lastbootup_;
            if (j4 != 0) {
                size += CodedOutputStream.computeUInt64Size(18, j4);
            }
            if (!getAccessBytes().isEmpty()) {
                size += GeneratedMessageV3.computeStringSize(19, this.access_);
            }
            if (!getHeadsetnameBytes().isEmpty()) {
                size += GeneratedMessageV3.computeStringSize(20, this.headsetname_);
            }
            long j5 = this.totalmem_;
            if (j5 != 0) {
                size += CodedOutputStream.computeUInt64Size(21, j5);
            }
            int i4 = this.atts_;
            if (i4 != 0) {
                size += CodedOutputStream.computeUInt32Size(22, i4);
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
            if (!(obj instanceof DeviceData)) {
                return super.equals(obj);
            }
            DeviceData deviceData = (DeviceData) obj;
            return getIfv().equals(deviceData.getIfv()) && getBmIfv().equals(deviceData.getBmIfv()) && getInputlanguageList().equals(deviceData.getInputlanguageList()) && getDiskspace() == deviceData.getDiskspace() && getTotaldisk() == deviceData.getTotaldisk() && getRingmute() == deviceData.getRingmute() && getCharging() == deviceData.getCharging() && getHeadset() == deviceData.getHeadset() && Float.floatToIntBits(getBatterylevel()) == Float.floatToIntBits(deviceData.getBatterylevel()) && getBatterysaver() == deviceData.getBatterysaver() && getDarkmode() == deviceData.getDarkmode() && getAirplane() == deviceData.getAirplane() && getDnd() == deviceData.getDnd() && getDevicename().equals(deviceData.getDevicename()) && getTime() == deviceData.getTime() && Float.floatToIntBits(getScreenbright()) == Float.floatToIntBits(deviceData.getScreenbright()) && getJailbreak() == deviceData.getJailbreak() && getLastbootup() == deviceData.getLastbootup() && getAccess().equals(deviceData.getAccess()) && getHeadsetname().equals(deviceData.getHeadsetname()) && getTotalmem() == deviceData.getTotalmem() && getAtts() == deviceData.getAtts() && this.unknownFields.equals(deviceData.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getIfv().hashCode()) * 37) + 2) * 53) + getBmIfv().hashCode();
            if (getInputlanguageCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getInputlanguageList().hashCode();
            }
            int hashLong = (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 37) + 4) * 53) + Internal.hashLong(getDiskspace())) * 37) + 5) * 53) + Internal.hashLong(getTotaldisk())) * 37) + 6) * 53) + Internal.hashBoolean(getRingmute())) * 37) + 7) * 53) + Internal.hashBoolean(getCharging())) * 37) + 8) * 53) + Internal.hashBoolean(getHeadset())) * 37) + 9) * 53) + Float.floatToIntBits(getBatterylevel())) * 37) + 10) * 53) + Internal.hashBoolean(getBatterysaver())) * 37) + 11) * 53) + Internal.hashBoolean(getDarkmode())) * 37) + 12) * 53) + Internal.hashBoolean(getAirplane())) * 37) + 13) * 53) + Internal.hashBoolean(getDnd())) * 37) + 14) * 53) + getDevicename().hashCode()) * 37) + 15) * 53) + Internal.hashLong(getTime())) * 37) + 16) * 53) + Float.floatToIntBits(getScreenbright())) * 37) + 17) * 53) + Internal.hashBoolean(getJailbreak())) * 37) + 18) * 53) + Internal.hashLong(getLastbootup())) * 37) + 19) * 53) + getAccess().hashCode()) * 37) + 20) * 53) + getHeadsetname().hashCode()) * 37) + 21) * 53) + Internal.hashLong(getTotalmem())) * 37) + 22) * 53) + getAtts()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashLong;
            return hashLong;
        }

        public static DeviceData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static DeviceData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static DeviceData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static DeviceData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DeviceData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static DeviceData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DeviceData parseFrom(InputStream inputStream) throws IOException {
            return (DeviceData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DeviceData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeviceData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DeviceData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DeviceData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DeviceData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeviceData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DeviceData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DeviceData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static DeviceData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DeviceData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(DeviceData deviceData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(deviceData);
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DeviceDataOrBuilder {
            private Object access_;
            private boolean airplane_;
            private int atts_;
            private float batterylevel_;
            private boolean batterysaver_;
            private int bitField0_;
            private Object bmIfv_;
            private boolean charging_;
            private boolean darkmode_;
            private Object devicename_;
            private long diskspace_;
            private boolean dnd_;
            private boolean headset_;
            private Object headsetname_;
            private Object ifv_;
            private LazyStringList inputlanguage_;
            private boolean jailbreak_;
            private long lastbootup_;
            private boolean ringmute_;
            private float screenbright_;
            private long time_;
            private long totaldisk_;
            private long totalmem_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_fieldAccessorTable.ensureFieldAccessorsInitialized(DeviceData.class, Builder.class);
            }

            private Builder() {
                this.ifv_ = "";
                this.bmIfv_ = "";
                this.inputlanguage_ = LazyStringArrayList.EMPTY;
                this.devicename_ = "";
                this.access_ = "";
                this.headsetname_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.ifv_ = "";
                this.bmIfv_ = "";
                this.inputlanguage_ = LazyStringArrayList.EMPTY;
                this.devicename_ = "";
                this.access_ = "";
                this.headsetname_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = DeviceData.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.ifv_ = "";
                this.bmIfv_ = "";
                this.inputlanguage_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.diskspace_ = 0L;
                this.totaldisk_ = 0L;
                this.ringmute_ = false;
                this.charging_ = false;
                this.headset_ = false;
                this.batterylevel_ = 0.0f;
                this.batterysaver_ = false;
                this.darkmode_ = false;
                this.airplane_ = false;
                this.dnd_ = false;
                this.devicename_ = "";
                this.time_ = 0L;
                this.screenbright_ = 0.0f;
                this.jailbreak_ = false;
                this.lastbootup_ = 0L;
                this.access_ = "";
                this.headsetname_ = "";
                this.totalmem_ = 0L;
                this.atts_ = 0;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_DeviceData_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public DeviceData getDefaultInstanceForType() {
                return DeviceData.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public DeviceData build() {
                DeviceData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public DeviceData buildPartial() {
                DeviceData deviceData = new DeviceData(this);
                deviceData.ifv_ = this.ifv_;
                deviceData.bmIfv_ = this.bmIfv_;
                if ((this.bitField0_ & 1) != 0) {
                    this.inputlanguage_ = this.inputlanguage_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                deviceData.inputlanguage_ = this.inputlanguage_;
                deviceData.diskspace_ = this.diskspace_;
                deviceData.totaldisk_ = this.totaldisk_;
                deviceData.ringmute_ = this.ringmute_;
                deviceData.charging_ = this.charging_;
                deviceData.headset_ = this.headset_;
                deviceData.batterylevel_ = this.batterylevel_;
                deviceData.batterysaver_ = this.batterysaver_;
                deviceData.darkmode_ = this.darkmode_;
                deviceData.airplane_ = this.airplane_;
                deviceData.dnd_ = this.dnd_;
                deviceData.devicename_ = this.devicename_;
                deviceData.time_ = this.time_;
                deviceData.screenbright_ = this.screenbright_;
                deviceData.jailbreak_ = this.jailbreak_;
                deviceData.lastbootup_ = this.lastbootup_;
                deviceData.access_ = this.access_;
                deviceData.headsetname_ = this.headsetname_;
                deviceData.totalmem_ = this.totalmem_;
                deviceData.atts_ = this.atts_;
                onBuilt();
                return deviceData;
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
                if (message instanceof DeviceData) {
                    return mergeFrom((DeviceData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DeviceData deviceData) {
                if (deviceData == DeviceData.getDefaultInstance()) {
                    return this;
                }
                if (!deviceData.getIfv().isEmpty()) {
                    this.ifv_ = deviceData.ifv_;
                    onChanged();
                }
                if (!deviceData.getBmIfv().isEmpty()) {
                    this.bmIfv_ = deviceData.bmIfv_;
                    onChanged();
                }
                if (!deviceData.inputlanguage_.isEmpty()) {
                    if (this.inputlanguage_.isEmpty()) {
                        this.inputlanguage_ = deviceData.inputlanguage_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureInputlanguageIsMutable();
                        this.inputlanguage_.addAll(deviceData.inputlanguage_);
                    }
                    onChanged();
                }
                if (deviceData.getDiskspace() != 0) {
                    setDiskspace(deviceData.getDiskspace());
                }
                if (deviceData.getTotaldisk() != 0) {
                    setTotaldisk(deviceData.getTotaldisk());
                }
                if (deviceData.getRingmute()) {
                    setRingmute(deviceData.getRingmute());
                }
                if (deviceData.getCharging()) {
                    setCharging(deviceData.getCharging());
                }
                if (deviceData.getHeadset()) {
                    setHeadset(deviceData.getHeadset());
                }
                if (deviceData.getBatterylevel() != 0.0f) {
                    setBatterylevel(deviceData.getBatterylevel());
                }
                if (deviceData.getBatterysaver()) {
                    setBatterysaver(deviceData.getBatterysaver());
                }
                if (deviceData.getDarkmode()) {
                    setDarkmode(deviceData.getDarkmode());
                }
                if (deviceData.getAirplane()) {
                    setAirplane(deviceData.getAirplane());
                }
                if (deviceData.getDnd()) {
                    setDnd(deviceData.getDnd());
                }
                if (!deviceData.getDevicename().isEmpty()) {
                    this.devicename_ = deviceData.devicename_;
                    onChanged();
                }
                if (deviceData.getTime() != 0) {
                    setTime(deviceData.getTime());
                }
                if (deviceData.getScreenbright() != 0.0f) {
                    setScreenbright(deviceData.getScreenbright());
                }
                if (deviceData.getJailbreak()) {
                    setJailbreak(deviceData.getJailbreak());
                }
                if (deviceData.getLastbootup() != 0) {
                    setLastbootup(deviceData.getLastbootup());
                }
                if (!deviceData.getAccess().isEmpty()) {
                    this.access_ = deviceData.access_;
                    onChanged();
                }
                if (!deviceData.getHeadsetname().isEmpty()) {
                    this.headsetname_ = deviceData.headsetname_;
                    onChanged();
                }
                if (deviceData.getTotalmem() != 0) {
                    setTotalmem(deviceData.getTotalmem());
                }
                if (deviceData.getAtts() != 0) {
                    setAtts(deviceData.getAtts());
                }
                mergeUnknownFields(deviceData.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.RequestTokenPayload.DeviceData.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.RequestTokenPayload.DeviceData.access$6500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.RequestTokenPayload$DeviceData r3 = (io.bidmachine.protobuf.RequestTokenPayload.DeviceData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.RequestTokenPayload$DeviceData r4 = (io.bidmachine.protobuf.RequestTokenPayload.DeviceData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestTokenPayload.DeviceData.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestTokenPayload$DeviceData$Builder");
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public String getIfv() {
                Object obj = this.ifv_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ifv_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public ByteString getIfvBytes() {
                Object obj = this.ifv_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ifv_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setIfv(String str) {
                str.getClass();
                this.ifv_ = str;
                onChanged();
                return this;
            }

            public Builder clearIfv() {
                this.ifv_ = DeviceData.getDefaultInstance().getIfv();
                onChanged();
                return this;
            }

            public Builder setIfvBytes(ByteString byteString) {
                byteString.getClass();
                DeviceData.checkByteStringIsUtf8(byteString);
                this.ifv_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public String getBmIfv() {
                Object obj = this.bmIfv_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.bmIfv_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public ByteString getBmIfvBytes() {
                Object obj = this.bmIfv_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.bmIfv_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setBmIfv(String str) {
                str.getClass();
                this.bmIfv_ = str;
                onChanged();
                return this;
            }

            public Builder clearBmIfv() {
                this.bmIfv_ = DeviceData.getDefaultInstance().getBmIfv();
                onChanged();
                return this;
            }

            public Builder setBmIfvBytes(ByteString byteString) {
                byteString.getClass();
                DeviceData.checkByteStringIsUtf8(byteString);
                this.bmIfv_ = byteString;
                onChanged();
                return this;
            }

            private void ensureInputlanguageIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.inputlanguage_ = new LazyStringArrayList(this.inputlanguage_);
                    this.bitField0_ |= 1;
                }
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public ProtocolStringList getInputlanguageList() {
                return this.inputlanguage_.getUnmodifiableView();
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public int getInputlanguageCount() {
                return this.inputlanguage_.size();
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public String getInputlanguage(int i) {
                return (String) this.inputlanguage_.get(i);
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public ByteString getInputlanguageBytes(int i) {
                return this.inputlanguage_.getByteString(i);
            }

            public Builder setInputlanguage(int i, String str) {
                str.getClass();
                ensureInputlanguageIsMutable();
                this.inputlanguage_.set(i, str);
                onChanged();
                return this;
            }

            public Builder addInputlanguage(String str) {
                str.getClass();
                ensureInputlanguageIsMutable();
                this.inputlanguage_.add(str);
                onChanged();
                return this;
            }

            public Builder addAllInputlanguage(Iterable<String> iterable) {
                ensureInputlanguageIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.inputlanguage_);
                onChanged();
                return this;
            }

            public Builder clearInputlanguage() {
                this.inputlanguage_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder addInputlanguageBytes(ByteString byteString) {
                byteString.getClass();
                DeviceData.checkByteStringIsUtf8(byteString);
                ensureInputlanguageIsMutable();
                this.inputlanguage_.add(byteString);
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public long getDiskspace() {
                return this.diskspace_;
            }

            public Builder setDiskspace(long j) {
                this.diskspace_ = j;
                onChanged();
                return this;
            }

            public Builder clearDiskspace() {
                this.diskspace_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public long getTotaldisk() {
                return this.totaldisk_;
            }

            public Builder setTotaldisk(long j) {
                this.totaldisk_ = j;
                onChanged();
                return this;
            }

            public Builder clearTotaldisk() {
                this.totaldisk_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getRingmute() {
                return this.ringmute_;
            }

            public Builder setRingmute(boolean z) {
                this.ringmute_ = z;
                onChanged();
                return this;
            }

            public Builder clearRingmute() {
                this.ringmute_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getCharging() {
                return this.charging_;
            }

            public Builder setCharging(boolean z) {
                this.charging_ = z;
                onChanged();
                return this;
            }

            public Builder clearCharging() {
                this.charging_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getHeadset() {
                return this.headset_;
            }

            public Builder setHeadset(boolean z) {
                this.headset_ = z;
                onChanged();
                return this;
            }

            public Builder clearHeadset() {
                this.headset_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public float getBatterylevel() {
                return this.batterylevel_;
            }

            public Builder setBatterylevel(float f2) {
                this.batterylevel_ = f2;
                onChanged();
                return this;
            }

            public Builder clearBatterylevel() {
                this.batterylevel_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getBatterysaver() {
                return this.batterysaver_;
            }

            public Builder setBatterysaver(boolean z) {
                this.batterysaver_ = z;
                onChanged();
                return this;
            }

            public Builder clearBatterysaver() {
                this.batterysaver_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getDarkmode() {
                return this.darkmode_;
            }

            public Builder setDarkmode(boolean z) {
                this.darkmode_ = z;
                onChanged();
                return this;
            }

            public Builder clearDarkmode() {
                this.darkmode_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getAirplane() {
                return this.airplane_;
            }

            public Builder setAirplane(boolean z) {
                this.airplane_ = z;
                onChanged();
                return this;
            }

            public Builder clearAirplane() {
                this.airplane_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getDnd() {
                return this.dnd_;
            }

            public Builder setDnd(boolean z) {
                this.dnd_ = z;
                onChanged();
                return this;
            }

            public Builder clearDnd() {
                this.dnd_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public String getDevicename() {
                Object obj = this.devicename_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.devicename_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public ByteString getDevicenameBytes() {
                Object obj = this.devicename_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.devicename_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setDevicename(String str) {
                str.getClass();
                this.devicename_ = str;
                onChanged();
                return this;
            }

            public Builder clearDevicename() {
                this.devicename_ = DeviceData.getDefaultInstance().getDevicename();
                onChanged();
                return this;
            }

            public Builder setDevicenameBytes(ByteString byteString) {
                byteString.getClass();
                DeviceData.checkByteStringIsUtf8(byteString);
                this.devicename_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public long getTime() {
                return this.time_;
            }

            public Builder setTime(long j) {
                this.time_ = j;
                onChanged();
                return this;
            }

            public Builder clearTime() {
                this.time_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public float getScreenbright() {
                return this.screenbright_;
            }

            public Builder setScreenbright(float f2) {
                this.screenbright_ = f2;
                onChanged();
                return this;
            }

            public Builder clearScreenbright() {
                this.screenbright_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public boolean getJailbreak() {
                return this.jailbreak_;
            }

            public Builder setJailbreak(boolean z) {
                this.jailbreak_ = z;
                onChanged();
                return this;
            }

            public Builder clearJailbreak() {
                this.jailbreak_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public long getLastbootup() {
                return this.lastbootup_;
            }

            public Builder setLastbootup(long j) {
                this.lastbootup_ = j;
                onChanged();
                return this;
            }

            public Builder clearLastbootup() {
                this.lastbootup_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public String getAccess() {
                Object obj = this.access_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.access_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public ByteString getAccessBytes() {
                Object obj = this.access_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.access_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAccess(String str) {
                str.getClass();
                this.access_ = str;
                onChanged();
                return this;
            }

            public Builder clearAccess() {
                this.access_ = DeviceData.getDefaultInstance().getAccess();
                onChanged();
                return this;
            }

            public Builder setAccessBytes(ByteString byteString) {
                byteString.getClass();
                DeviceData.checkByteStringIsUtf8(byteString);
                this.access_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public String getHeadsetname() {
                Object obj = this.headsetname_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.headsetname_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public ByteString getHeadsetnameBytes() {
                Object obj = this.headsetname_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.headsetname_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setHeadsetname(String str) {
                str.getClass();
                this.headsetname_ = str;
                onChanged();
                return this;
            }

            public Builder clearHeadsetname() {
                this.headsetname_ = DeviceData.getDefaultInstance().getHeadsetname();
                onChanged();
                return this;
            }

            public Builder setHeadsetnameBytes(ByteString byteString) {
                byteString.getClass();
                DeviceData.checkByteStringIsUtf8(byteString);
                this.headsetname_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public long getTotalmem() {
                return this.totalmem_;
            }

            public Builder setTotalmem(long j) {
                this.totalmem_ = j;
                onChanged();
                return this;
            }

            public Builder clearTotalmem() {
                this.totalmem_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.DeviceDataOrBuilder
            public int getAtts() {
                return this.atts_;
            }

            public Builder setAtts(int i) {
                this.atts_ = i;
                onChanged();
                return this;
            }

            public Builder clearAtts() {
                this.atts_ = 0;
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

        public static DeviceData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DeviceData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<DeviceData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public DeviceData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes5.dex */
    public static final class UserData extends GeneratedMessageV3 implements UserDataOrBuilder {
        public static final int CCPA_FIELD_NUMBER = 3;
        public static final int CONSENT_FIELD_NUMBER = 1;
        public static final int GDPR_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object ccpa_;
        private volatile Object consent_;
        private boolean gdpr_;
        private byte memoizedIsInitialized;
        private static final UserData DEFAULT_INSTANCE = new UserData();
        private static final Parser<UserData> PARSER = new AbstractParser<UserData>() { // from class: io.bidmachine.protobuf.RequestTokenPayload.UserData.1
            @Override // com.explorestack.protobuf.Parser
            public UserData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new UserData(codedInputStream, extensionRegistryLite);
            }
        };

        private UserData(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private UserData() {
            this.memoizedIsInitialized = (byte) -1;
            this.consent_ = "";
            this.ccpa_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new UserData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private UserData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.consent_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 16) {
                                this.gdpr_ = codedInputStream.readBool();
                            } else if (readTag == 26) {
                                this.ccpa_ = codedInputStream.readStringRequireUtf8();
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
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_fieldAccessorTable.ensureFieldAccessorsInitialized(UserData.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
        public String getConsent() {
            Object obj = this.consent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.consent_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
        public ByteString getConsentBytes() {
            Object obj = this.consent_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.consent_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
        public boolean getGdpr() {
            return this.gdpr_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
        public String getCcpa() {
            Object obj = this.ccpa_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ccpa_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
        public ByteString getCcpaBytes() {
            Object obj = this.ccpa_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ccpa_ = copyFromUtf8;
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
            if (!getConsentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.consent_);
            }
            boolean z = this.gdpr_;
            if (z) {
                codedOutputStream.writeBool(2, z);
            }
            if (!getCcpaBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.ccpa_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getConsentBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.consent_) : 0;
            boolean z = this.gdpr_;
            if (z) {
                computeStringSize += CodedOutputStream.computeBoolSize(2, z);
            }
            if (!getCcpaBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.ccpa_);
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
            if (!(obj instanceof UserData)) {
                return super.equals(obj);
            }
            UserData userData = (UserData) obj;
            return getConsent().equals(userData.getConsent()) && getGdpr() == userData.getGdpr() && getCcpa().equals(userData.getCcpa()) && this.unknownFields.equals(userData.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getConsent().hashCode()) * 37) + 2) * 53) + Internal.hashBoolean(getGdpr())) * 37) + 3) * 53) + getCcpa().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static UserData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static UserData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static UserData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static UserData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static UserData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static UserData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static UserData parseFrom(InputStream inputStream) throws IOException {
            return (UserData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static UserData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static UserData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UserData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static UserData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (UserData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static UserData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (UserData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(UserData userData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(userData);
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements UserDataOrBuilder {
            private Object ccpa_;
            private Object consent_;
            private boolean gdpr_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_fieldAccessorTable.ensureFieldAccessorsInitialized(UserData.class, Builder.class);
            }

            private Builder() {
                this.consent_ = "";
                this.ccpa_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.consent_ = "";
                this.ccpa_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = UserData.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.consent_ = "";
                this.gdpr_ = false;
                this.ccpa_ = "";
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_UserData_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public UserData getDefaultInstanceForType() {
                return UserData.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserData build() {
                UserData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserData buildPartial() {
                UserData userData = new UserData(this);
                userData.consent_ = this.consent_;
                userData.gdpr_ = this.gdpr_;
                userData.ccpa_ = this.ccpa_;
                onBuilt();
                return userData;
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
                if (message instanceof UserData) {
                    return mergeFrom((UserData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(UserData userData) {
                if (userData == UserData.getDefaultInstance()) {
                    return this;
                }
                if (!userData.getConsent().isEmpty()) {
                    this.consent_ = userData.consent_;
                    onChanged();
                }
                if (userData.getGdpr()) {
                    setGdpr(userData.getGdpr());
                }
                if (!userData.getCcpa().isEmpty()) {
                    this.ccpa_ = userData.ccpa_;
                    onChanged();
                }
                mergeUnknownFields(userData.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.RequestTokenPayload.UserData.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.RequestTokenPayload.UserData.access$8100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.RequestTokenPayload$UserData r3 = (io.bidmachine.protobuf.RequestTokenPayload.UserData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.RequestTokenPayload$UserData r4 = (io.bidmachine.protobuf.RequestTokenPayload.UserData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestTokenPayload.UserData.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestTokenPayload$UserData$Builder");
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
            public String getConsent() {
                Object obj = this.consent_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.consent_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
            public ByteString getConsentBytes() {
                Object obj = this.consent_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.consent_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setConsent(String str) {
                str.getClass();
                this.consent_ = str;
                onChanged();
                return this;
            }

            public Builder clearConsent() {
                this.consent_ = UserData.getDefaultInstance().getConsent();
                onChanged();
                return this;
            }

            public Builder setConsentBytes(ByteString byteString) {
                byteString.getClass();
                UserData.checkByteStringIsUtf8(byteString);
                this.consent_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
            public boolean getGdpr() {
                return this.gdpr_;
            }

            public Builder setGdpr(boolean z) {
                this.gdpr_ = z;
                onChanged();
                return this;
            }

            public Builder clearGdpr() {
                this.gdpr_ = false;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
            public String getCcpa() {
                Object obj = this.ccpa_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ccpa_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.UserDataOrBuilder
            public ByteString getCcpaBytes() {
                Object obj = this.ccpa_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ccpa_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setCcpa(String str) {
                str.getClass();
                this.ccpa_ = str;
                onChanged();
                return this;
            }

            public Builder clearCcpa() {
                this.ccpa_ = UserData.getDefaultInstance().getCcpa();
                onChanged();
                return this;
            }

            public Builder setCcpaBytes(ByteString byteString) {
                byteString.getClass();
                UserData.checkByteStringIsUtf8(byteString);
                this.ccpa_ = byteString;
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

        public static UserData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UserData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<UserData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public UserData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    /* loaded from: classes5.dex */
    public static final class AppData extends GeneratedMessageV3 implements AppDataOrBuilder {
        public static final int APP_NAME_FIELD_NUMBER = 1;
        public static final int APP_VER_FIELD_NUMBER = 2;
        private static final AppData DEFAULT_INSTANCE = new AppData();
        private static final Parser<AppData> PARSER = new AbstractParser<AppData>() { // from class: io.bidmachine.protobuf.RequestTokenPayload.AppData.1
            @Override // com.explorestack.protobuf.Parser
            public AppData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AppData(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private volatile Object appName_;
        private volatile Object appVer_;
        private byte memoizedIsInitialized;

        private AppData(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private AppData() {
            this.memoizedIsInitialized = (byte) -1;
            this.appName_ = "";
            this.appVer_ = "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new AppData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private AppData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    this.appName_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.appVer_ = codedInputStream.readStringRequireUtf8();
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
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_fieldAccessorTable.ensureFieldAccessorsInitialized(AppData.class, Builder.class);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
        public String getAppName() {
            Object obj = this.appName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appName_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
        public ByteString getAppNameBytes() {
            Object obj = this.appName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
        public String getAppVer() {
            Object obj = this.appVer_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.appVer_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
        public ByteString getAppVerBytes() {
            Object obj = this.appVer_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVer_ = copyFromUtf8;
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
            if (!getAppNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.appName_);
            }
            if (!getAppVerBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.appVer_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getAppNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.appName_) : 0;
            if (!getAppVerBytes().isEmpty()) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.appVer_);
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
            if (!(obj instanceof AppData)) {
                return super.equals(obj);
            }
            AppData appData = (AppData) obj;
            return getAppName().equals(appData.getAppName()) && getAppVer().equals(appData.getAppVer()) && this.unknownFields.equals(appData.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAppName().hashCode()) * 37) + 2) * 53) + getAppVer().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static AppData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static AppData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static AppData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static AppData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AppData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static AppData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AppData parseFrom(InputStream inputStream) throws IOException {
            return (AppData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static AppData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AppData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static AppData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AppData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AppData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AppData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static AppData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AppData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static AppData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AppData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(AppData appData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(appData);
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AppDataOrBuilder {
            private Object appName_;
            private Object appVer_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_fieldAccessorTable.ensureFieldAccessorsInitialized(AppData.class, Builder.class);
            }

            private Builder() {
                this.appName_ = "";
                this.appVer_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.appName_ = "";
                this.appVer_ = "";
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = AppData.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.appName_ = "";
                this.appVer_ = "";
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_AppData_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public AppData getDefaultInstanceForType() {
                return AppData.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AppData build() {
                AppData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AppData buildPartial() {
                AppData appData = new AppData(this);
                appData.appName_ = this.appName_;
                appData.appVer_ = this.appVer_;
                onBuilt();
                return appData;
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
                if (message instanceof AppData) {
                    return mergeFrom((AppData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AppData appData) {
                if (appData == AppData.getDefaultInstance()) {
                    return this;
                }
                if (!appData.getAppName().isEmpty()) {
                    this.appName_ = appData.appName_;
                    onChanged();
                }
                if (!appData.getAppVer().isEmpty()) {
                    this.appVer_ = appData.appVer_;
                    onChanged();
                }
                mergeUnknownFields(appData.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.RequestTokenPayload.AppData.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.RequestTokenPayload.AppData.access$9200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.RequestTokenPayload$AppData r3 = (io.bidmachine.protobuf.RequestTokenPayload.AppData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.RequestTokenPayload$AppData r4 = (io.bidmachine.protobuf.RequestTokenPayload.AppData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestTokenPayload.AppData.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestTokenPayload$AppData$Builder");
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
            public String getAppName() {
                Object obj = this.appName_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.appName_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
            public ByteString getAppNameBytes() {
                Object obj = this.appName_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.appName_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAppName(String str) {
                str.getClass();
                this.appName_ = str;
                onChanged();
                return this;
            }

            public Builder clearAppName() {
                this.appName_ = AppData.getDefaultInstance().getAppName();
                onChanged();
                return this;
            }

            public Builder setAppNameBytes(ByteString byteString) {
                byteString.getClass();
                AppData.checkByteStringIsUtf8(byteString);
                this.appName_ = byteString;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
            public String getAppVer() {
                Object obj = this.appVer_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.appVer_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.RequestTokenPayload.AppDataOrBuilder
            public ByteString getAppVerBytes() {
                Object obj = this.appVer_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.appVer_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setAppVer(String str) {
                str.getClass();
                this.appVer_ = str;
                onChanged();
                return this;
            }

            public Builder clearAppVer() {
                this.appVer_ = AppData.getDefaultInstance().getAppVer();
                onChanged();
                return this;
            }

            public Builder setAppVerBytes(ByteString byteString) {
                byteString.getClass();
                AppData.checkByteStringIsUtf8(byteString);
                this.appVer_ = byteString;
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

        public static AppData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<AppData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<AppData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public AppData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public boolean hasPlacementData() {
        return this.placementData_ != null;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public PlacementData getPlacementData() {
        PlacementData placementData = this.placementData_;
        return placementData == null ? PlacementData.getDefaultInstance() : placementData;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public PlacementDataOrBuilder getPlacementDataOrBuilder() {
        return getPlacementData();
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public boolean hasSessionData() {
        return this.sessionData_ != null;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public SessionData getSessionData() {
        SessionData sessionData = this.sessionData_;
        return sessionData == null ? SessionData.getDefaultInstance() : sessionData;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public SessionDataOrBuilder getSessionDataOrBuilder() {
        return getSessionData();
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public boolean hasDeviceData() {
        return this.deviceData_ != null;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public DeviceData getDeviceData() {
        DeviceData deviceData = this.deviceData_;
        return deviceData == null ? DeviceData.getDefaultInstance() : deviceData;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public DeviceDataOrBuilder getDeviceDataOrBuilder() {
        return getDeviceData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class CustomDataDefaultEntryHolder {
        static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_CustomDataEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

        private CustomDataDefaultEntryHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetCustomData() {
        MapField<String, String> mapField = this.customData_;
        return mapField == null ? MapField.emptyMapField(CustomDataDefaultEntryHolder.defaultEntry) : mapField;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public int getCustomDataCount() {
        return internalGetCustomData().getMap().size();
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public boolean containsCustomData(String str) {
        str.getClass();
        return internalGetCustomData().getMap().containsKey(str);
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    @Deprecated
    public Map<String, String> getCustomData() {
        return getCustomDataMap();
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public Map<String, String> getCustomDataMap() {
        return internalGetCustomData().getMap();
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public String getCustomDataOrDefault(String str, String str2) {
        str.getClass();
        Map<String, String> map = internalGetCustomData().getMap();
        return map.containsKey(str) ? map.get(str) : str2;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public String getCustomDataOrThrow(String str) {
        str.getClass();
        Map<String, String> map = internalGetCustomData().getMap();
        if (!map.containsKey(str)) {
            throw new IllegalArgumentException();
        }
        return map.get(str);
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public boolean hasUserData() {
        return this.userData_ != null;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public UserData getUserData() {
        UserData userData = this.userData_;
        return userData == null ? UserData.getDefaultInstance() : userData;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public UserDataOrBuilder getUserDataOrBuilder() {
        return getUserData();
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public boolean hasAppData() {
        return this.appData_ != null;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public AppData getAppData() {
        AppData appData = this.appData_;
        return appData == null ? AppData.getDefaultInstance() : appData;
    }

    @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
    public AppDataOrBuilder getAppDataOrBuilder() {
        return getAppData();
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
        if (this.placementData_ != null) {
            codedOutputStream.writeMessage(1, getPlacementData());
        }
        if (this.sessionData_ != null) {
            codedOutputStream.writeMessage(2, getSessionData());
        }
        if (this.deviceData_ != null) {
            codedOutputStream.writeMessage(3, getDeviceData());
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCustomData(), CustomDataDefaultEntryHolder.defaultEntry, 4);
        if (this.userData_ != null) {
            codedOutputStream.writeMessage(5, getUserData());
        }
        if (this.appData_ != null) {
            codedOutputStream.writeMessage(6, getAppData());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeMessageSize = this.placementData_ != null ? CodedOutputStream.computeMessageSize(1, getPlacementData()) : 0;
        if (this.sessionData_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, getSessionData());
        }
        if (this.deviceData_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(3, getDeviceData());
        }
        for (Map.Entry<String, String> entry : internalGetCustomData().getMap().entrySet()) {
            computeMessageSize += CodedOutputStream.computeMessageSize(4, CustomDataDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
        if (this.userData_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(5, getUserData());
        }
        if (this.appData_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(6, getAppData());
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
        if (!(obj instanceof RequestTokenPayload)) {
            return super.equals(obj);
        }
        RequestTokenPayload requestTokenPayload = (RequestTokenPayload) obj;
        if (hasPlacementData() != requestTokenPayload.hasPlacementData()) {
            return false;
        }
        if ((!hasPlacementData() || getPlacementData().equals(requestTokenPayload.getPlacementData())) && hasSessionData() == requestTokenPayload.hasSessionData()) {
            if ((!hasSessionData() || getSessionData().equals(requestTokenPayload.getSessionData())) && hasDeviceData() == requestTokenPayload.hasDeviceData()) {
                if ((!hasDeviceData() || getDeviceData().equals(requestTokenPayload.getDeviceData())) && internalGetCustomData().equals(requestTokenPayload.internalGetCustomData()) && hasUserData() == requestTokenPayload.hasUserData()) {
                    if ((!hasUserData() || getUserData().equals(requestTokenPayload.getUserData())) && hasAppData() == requestTokenPayload.hasAppData()) {
                        return (!hasAppData() || getAppData().equals(requestTokenPayload.getAppData())) && this.unknownFields.equals(requestTokenPayload.unknownFields);
                    }
                    return false;
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
        if (hasPlacementData()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPlacementData().hashCode();
        }
        if (hasSessionData()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getSessionData().hashCode();
        }
        if (hasDeviceData()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDeviceData().hashCode();
        }
        if (!internalGetCustomData().getMap().isEmpty()) {
            hashCode = (((hashCode * 37) + 4) * 53) + internalGetCustomData().hashCode();
        }
        if (hasUserData()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getUserData().hashCode();
        }
        if (hasAppData()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getAppData().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    public static RequestTokenPayload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static RequestTokenPayload parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static RequestTokenPayload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static RequestTokenPayload parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static RequestTokenPayload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static RequestTokenPayload parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static RequestTokenPayload parseFrom(InputStream inputStream) throws IOException {
        return (RequestTokenPayload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RequestTokenPayload parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RequestTokenPayload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RequestTokenPayload parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RequestTokenPayload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RequestTokenPayload parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RequestTokenPayload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RequestTokenPayload parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (RequestTokenPayload) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static RequestTokenPayload parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RequestTokenPayload) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(RequestTokenPayload requestTokenPayload) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(requestTokenPayload);
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

    /* loaded from: classes5.dex */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RequestTokenPayloadOrBuilder {
        private SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> appDataBuilder_;
        private AppData appData_;
        private int bitField0_;
        private MapField<String, String> customData_;
        private SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> deviceDataBuilder_;
        private DeviceData deviceData_;
        private SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> placementDataBuilder_;
        private PlacementData placementData_;
        private SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> sessionDataBuilder_;
        private SessionData sessionData_;
        private SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> userDataBuilder_;
        private UserData userData_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected MapField internalGetMapField(int i) {
            if (i == 4) {
                return internalGetCustomData();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected MapField internalGetMutableMapField(int i) {
            if (i == 4) {
                return internalGetMutableCustomData();
            }
            throw new RuntimeException("Invalid map field number: " + i);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestTokenPayload.class, Builder.class);
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = RequestTokenPayload.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            if (this.placementDataBuilder_ == null) {
                this.placementData_ = null;
            } else {
                this.placementData_ = null;
                this.placementDataBuilder_ = null;
            }
            if (this.sessionDataBuilder_ == null) {
                this.sessionData_ = null;
            } else {
                this.sessionData_ = null;
                this.sessionDataBuilder_ = null;
            }
            if (this.deviceDataBuilder_ == null) {
                this.deviceData_ = null;
            } else {
                this.deviceData_ = null;
                this.deviceDataBuilder_ = null;
            }
            internalGetMutableCustomData().clear();
            if (this.userDataBuilder_ == null) {
                this.userData_ = null;
            } else {
                this.userData_ = null;
                this.userDataBuilder_ = null;
            }
            if (this.appDataBuilder_ == null) {
                this.appData_ = null;
            } else {
                this.appData_ = null;
                this.appDataBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return CacheProto.internal_static_bidmachine_protobuf_RequestTokenPayload_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public RequestTokenPayload getDefaultInstanceForType() {
            return RequestTokenPayload.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RequestTokenPayload build() {
            RequestTokenPayload buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RequestTokenPayload buildPartial() {
            RequestTokenPayload requestTokenPayload = new RequestTokenPayload(this);
            SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> singleFieldBuilderV3 = this.placementDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                requestTokenPayload.placementData_ = this.placementData_;
            } else {
                requestTokenPayload.placementData_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> singleFieldBuilderV32 = this.sessionDataBuilder_;
            if (singleFieldBuilderV32 == null) {
                requestTokenPayload.sessionData_ = this.sessionData_;
            } else {
                requestTokenPayload.sessionData_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> singleFieldBuilderV33 = this.deviceDataBuilder_;
            if (singleFieldBuilderV33 == null) {
                requestTokenPayload.deviceData_ = this.deviceData_;
            } else {
                requestTokenPayload.deviceData_ = singleFieldBuilderV33.build();
            }
            requestTokenPayload.customData_ = internalGetCustomData();
            requestTokenPayload.customData_.makeImmutable();
            SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> singleFieldBuilderV34 = this.userDataBuilder_;
            if (singleFieldBuilderV34 == null) {
                requestTokenPayload.userData_ = this.userData_;
            } else {
                requestTokenPayload.userData_ = singleFieldBuilderV34.build();
            }
            SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> singleFieldBuilderV35 = this.appDataBuilder_;
            if (singleFieldBuilderV35 == null) {
                requestTokenPayload.appData_ = this.appData_;
            } else {
                requestTokenPayload.appData_ = singleFieldBuilderV35.build();
            }
            onBuilt();
            return requestTokenPayload;
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
            if (message instanceof RequestTokenPayload) {
                return mergeFrom((RequestTokenPayload) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(RequestTokenPayload requestTokenPayload) {
            if (requestTokenPayload == RequestTokenPayload.getDefaultInstance()) {
                return this;
            }
            if (requestTokenPayload.hasPlacementData()) {
                mergePlacementData(requestTokenPayload.getPlacementData());
            }
            if (requestTokenPayload.hasSessionData()) {
                mergeSessionData(requestTokenPayload.getSessionData());
            }
            if (requestTokenPayload.hasDeviceData()) {
                mergeDeviceData(requestTokenPayload.getDeviceData());
            }
            internalGetMutableCustomData().mergeFrom(requestTokenPayload.internalGetCustomData());
            if (requestTokenPayload.hasUserData()) {
                mergeUserData(requestTokenPayload.getUserData());
            }
            if (requestTokenPayload.hasAppData()) {
                mergeAppData(requestTokenPayload.getAppData());
            }
            mergeUnknownFields(requestTokenPayload.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.RequestTokenPayload.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = io.bidmachine.protobuf.RequestTokenPayload.access$10800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.RequestTokenPayload r3 = (io.bidmachine.protobuf.RequestTokenPayload) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.RequestTokenPayload r4 = (io.bidmachine.protobuf.RequestTokenPayload) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestTokenPayload.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestTokenPayload$Builder");
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public boolean hasPlacementData() {
            return (this.placementDataBuilder_ == null && this.placementData_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public PlacementData getPlacementData() {
            SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> singleFieldBuilderV3 = this.placementDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                PlacementData placementData = this.placementData_;
                return placementData == null ? PlacementData.getDefaultInstance() : placementData;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setPlacementData(PlacementData placementData) {
            SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> singleFieldBuilderV3 = this.placementDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                placementData.getClass();
                this.placementData_ = placementData;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(placementData);
            }
            return this;
        }

        public Builder setPlacementData(PlacementData.Builder builder) {
            SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> singleFieldBuilderV3 = this.placementDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.placementData_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergePlacementData(PlacementData placementData) {
            SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> singleFieldBuilderV3 = this.placementDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                PlacementData placementData2 = this.placementData_;
                if (placementData2 != null) {
                    this.placementData_ = PlacementData.newBuilder(placementData2).mergeFrom(placementData).buildPartial();
                } else {
                    this.placementData_ = placementData;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(placementData);
            }
            return this;
        }

        public Builder clearPlacementData() {
            if (this.placementDataBuilder_ == null) {
                this.placementData_ = null;
                onChanged();
            } else {
                this.placementData_ = null;
                this.placementDataBuilder_ = null;
            }
            return this;
        }

        public PlacementData.Builder getPlacementDataBuilder() {
            onChanged();
            return getPlacementDataFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public PlacementDataOrBuilder getPlacementDataOrBuilder() {
            SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> singleFieldBuilderV3 = this.placementDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            PlacementData placementData = this.placementData_;
            return placementData == null ? PlacementData.getDefaultInstance() : placementData;
        }

        private SingleFieldBuilderV3<PlacementData, PlacementData.Builder, PlacementDataOrBuilder> getPlacementDataFieldBuilder() {
            if (this.placementDataBuilder_ == null) {
                this.placementDataBuilder_ = new SingleFieldBuilderV3<>(getPlacementData(), getParentForChildren(), isClean());
                this.placementData_ = null;
            }
            return this.placementDataBuilder_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public boolean hasSessionData() {
            return (this.sessionDataBuilder_ == null && this.sessionData_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public SessionData getSessionData() {
            SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> singleFieldBuilderV3 = this.sessionDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                SessionData sessionData = this.sessionData_;
                return sessionData == null ? SessionData.getDefaultInstance() : sessionData;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setSessionData(SessionData sessionData) {
            SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> singleFieldBuilderV3 = this.sessionDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                sessionData.getClass();
                this.sessionData_ = sessionData;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(sessionData);
            }
            return this;
        }

        public Builder setSessionData(SessionData.Builder builder) {
            SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> singleFieldBuilderV3 = this.sessionDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.sessionData_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeSessionData(SessionData sessionData) {
            SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> singleFieldBuilderV3 = this.sessionDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                SessionData sessionData2 = this.sessionData_;
                if (sessionData2 != null) {
                    this.sessionData_ = SessionData.newBuilder(sessionData2).mergeFrom(sessionData).buildPartial();
                } else {
                    this.sessionData_ = sessionData;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(sessionData);
            }
            return this;
        }

        public Builder clearSessionData() {
            if (this.sessionDataBuilder_ == null) {
                this.sessionData_ = null;
                onChanged();
            } else {
                this.sessionData_ = null;
                this.sessionDataBuilder_ = null;
            }
            return this;
        }

        public SessionData.Builder getSessionDataBuilder() {
            onChanged();
            return getSessionDataFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public SessionDataOrBuilder getSessionDataOrBuilder() {
            SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> singleFieldBuilderV3 = this.sessionDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            SessionData sessionData = this.sessionData_;
            return sessionData == null ? SessionData.getDefaultInstance() : sessionData;
        }

        private SingleFieldBuilderV3<SessionData, SessionData.Builder, SessionDataOrBuilder> getSessionDataFieldBuilder() {
            if (this.sessionDataBuilder_ == null) {
                this.sessionDataBuilder_ = new SingleFieldBuilderV3<>(getSessionData(), getParentForChildren(), isClean());
                this.sessionData_ = null;
            }
            return this.sessionDataBuilder_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public boolean hasDeviceData() {
            return (this.deviceDataBuilder_ == null && this.deviceData_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public DeviceData getDeviceData() {
            SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> singleFieldBuilderV3 = this.deviceDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                DeviceData deviceData = this.deviceData_;
                return deviceData == null ? DeviceData.getDefaultInstance() : deviceData;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setDeviceData(DeviceData deviceData) {
            SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> singleFieldBuilderV3 = this.deviceDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                deviceData.getClass();
                this.deviceData_ = deviceData;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(deviceData);
            }
            return this;
        }

        public Builder setDeviceData(DeviceData.Builder builder) {
            SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> singleFieldBuilderV3 = this.deviceDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.deviceData_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeDeviceData(DeviceData deviceData) {
            SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> singleFieldBuilderV3 = this.deviceDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                DeviceData deviceData2 = this.deviceData_;
                if (deviceData2 != null) {
                    this.deviceData_ = DeviceData.newBuilder(deviceData2).mergeFrom(deviceData).buildPartial();
                } else {
                    this.deviceData_ = deviceData;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(deviceData);
            }
            return this;
        }

        public Builder clearDeviceData() {
            if (this.deviceDataBuilder_ == null) {
                this.deviceData_ = null;
                onChanged();
            } else {
                this.deviceData_ = null;
                this.deviceDataBuilder_ = null;
            }
            return this;
        }

        public DeviceData.Builder getDeviceDataBuilder() {
            onChanged();
            return getDeviceDataFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public DeviceDataOrBuilder getDeviceDataOrBuilder() {
            SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> singleFieldBuilderV3 = this.deviceDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            DeviceData deviceData = this.deviceData_;
            return deviceData == null ? DeviceData.getDefaultInstance() : deviceData;
        }

        private SingleFieldBuilderV3<DeviceData, DeviceData.Builder, DeviceDataOrBuilder> getDeviceDataFieldBuilder() {
            if (this.deviceDataBuilder_ == null) {
                this.deviceDataBuilder_ = new SingleFieldBuilderV3<>(getDeviceData(), getParentForChildren(), isClean());
                this.deviceData_ = null;
            }
            return this.deviceDataBuilder_;
        }

        private MapField<String, String> internalGetCustomData() {
            MapField<String, String> mapField = this.customData_;
            return mapField == null ? MapField.emptyMapField(CustomDataDefaultEntryHolder.defaultEntry) : mapField;
        }

        private MapField<String, String> internalGetMutableCustomData() {
            onChanged();
            if (this.customData_ == null) {
                this.customData_ = MapField.newMapField(CustomDataDefaultEntryHolder.defaultEntry);
            }
            if (!this.customData_.isMutable()) {
                this.customData_ = this.customData_.copy();
            }
            return this.customData_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public int getCustomDataCount() {
            return internalGetCustomData().getMap().size();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public boolean containsCustomData(String str) {
            str.getClass();
            return internalGetCustomData().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        @Deprecated
        public Map<String, String> getCustomData() {
            return getCustomDataMap();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public Map<String, String> getCustomDataMap() {
            return internalGetCustomData().getMap();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public String getCustomDataOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> map = internalGetCustomData().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public String getCustomDataOrThrow(String str) {
            str.getClass();
            Map<String, String> map = internalGetCustomData().getMap();
            if (!map.containsKey(str)) {
                throw new IllegalArgumentException();
            }
            return map.get(str);
        }

        public Builder clearCustomData() {
            internalGetMutableCustomData().getMutableMap().clear();
            return this;
        }

        public Builder removeCustomData(String str) {
            str.getClass();
            internalGetMutableCustomData().getMutableMap().remove(str);
            return this;
        }

        @Deprecated
        public Map<String, String> getMutableCustomData() {
            return internalGetMutableCustomData().getMutableMap();
        }

        public Builder putCustomData(String str, String str2) {
            str.getClass();
            str2.getClass();
            internalGetMutableCustomData().getMutableMap().put(str, str2);
            return this;
        }

        public Builder putAllCustomData(Map<String, String> map) {
            internalGetMutableCustomData().getMutableMap().putAll(map);
            return this;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public boolean hasUserData() {
            return (this.userDataBuilder_ == null && this.userData_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public UserData getUserData() {
            SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> singleFieldBuilderV3 = this.userDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                UserData userData = this.userData_;
                return userData == null ? UserData.getDefaultInstance() : userData;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setUserData(UserData userData) {
            SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> singleFieldBuilderV3 = this.userDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                userData.getClass();
                this.userData_ = userData;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(userData);
            }
            return this;
        }

        public Builder setUserData(UserData.Builder builder) {
            SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> singleFieldBuilderV3 = this.userDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.userData_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeUserData(UserData userData) {
            SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> singleFieldBuilderV3 = this.userDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                UserData userData2 = this.userData_;
                if (userData2 != null) {
                    this.userData_ = UserData.newBuilder(userData2).mergeFrom(userData).buildPartial();
                } else {
                    this.userData_ = userData;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(userData);
            }
            return this;
        }

        public Builder clearUserData() {
            if (this.userDataBuilder_ == null) {
                this.userData_ = null;
                onChanged();
            } else {
                this.userData_ = null;
                this.userDataBuilder_ = null;
            }
            return this;
        }

        public UserData.Builder getUserDataBuilder() {
            onChanged();
            return getUserDataFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public UserDataOrBuilder getUserDataOrBuilder() {
            SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> singleFieldBuilderV3 = this.userDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            UserData userData = this.userData_;
            return userData == null ? UserData.getDefaultInstance() : userData;
        }

        private SingleFieldBuilderV3<UserData, UserData.Builder, UserDataOrBuilder> getUserDataFieldBuilder() {
            if (this.userDataBuilder_ == null) {
                this.userDataBuilder_ = new SingleFieldBuilderV3<>(getUserData(), getParentForChildren(), isClean());
                this.userData_ = null;
            }
            return this.userDataBuilder_;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public boolean hasAppData() {
            return (this.appDataBuilder_ == null && this.appData_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public AppData getAppData() {
            SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> singleFieldBuilderV3 = this.appDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                AppData appData = this.appData_;
                return appData == null ? AppData.getDefaultInstance() : appData;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setAppData(AppData appData) {
            SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> singleFieldBuilderV3 = this.appDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                appData.getClass();
                this.appData_ = appData;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(appData);
            }
            return this;
        }

        public Builder setAppData(AppData.Builder builder) {
            SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> singleFieldBuilderV3 = this.appDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.appData_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeAppData(AppData appData) {
            SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> singleFieldBuilderV3 = this.appDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                AppData appData2 = this.appData_;
                if (appData2 != null) {
                    this.appData_ = AppData.newBuilder(appData2).mergeFrom(appData).buildPartial();
                } else {
                    this.appData_ = appData;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(appData);
            }
            return this;
        }

        public Builder clearAppData() {
            if (this.appDataBuilder_ == null) {
                this.appData_ = null;
                onChanged();
            } else {
                this.appData_ = null;
                this.appDataBuilder_ = null;
            }
            return this;
        }

        public AppData.Builder getAppDataBuilder() {
            onChanged();
            return getAppDataFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.RequestTokenPayloadOrBuilder
        public AppDataOrBuilder getAppDataOrBuilder() {
            SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> singleFieldBuilderV3 = this.appDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            AppData appData = this.appData_;
            return appData == null ? AppData.getDefaultInstance() : appData;
        }

        private SingleFieldBuilderV3<AppData, AppData.Builder, AppDataOrBuilder> getAppDataFieldBuilder() {
            if (this.appDataBuilder_ == null) {
                this.appDataBuilder_ = new SingleFieldBuilderV3<>(getAppData(), getParentForChildren(), isClean());
                this.appData_ = null;
            }
            return this.appDataBuilder_;
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

    public static RequestTokenPayload getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<RequestTokenPayload> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<RequestTokenPayload> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public RequestTokenPayload getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
