package com.appodeal.ads.api;

import com.appodeal.ads.api.AdStats;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class Session extends GeneratedMessageV3 implements SessionOrBuilder {
    public static final int ACTIVE_SESSION_ID_FIELD_NUMBER = 11;
    public static final int ACTIVE_SESSION_UPTIME_FIELD_NUMBER = 10;
    public static final int AD_STATS_FIELD_NUMBER = 8;
    public static final int APP_SESSION_AVERAGE_LENGTH_FIELD_NUMBER = 12;
    public static final int EXT_FIELD_NUMBER = 2;
    public static final int MONOTONIC_APP_SESSION_AVERAGE_LENGTH_FIELD_NUMBER = 13;
    public static final int MONOTONIC_SESSION_UPTIME_FIELD_NUMBER = 9;
    public static final int SEGMENT_ID_FIELD_NUMBER = 7;
    public static final int SESSION_ID_FIELD_NUMBER = 4;
    public static final int SESSION_UPTIME_FIELD_NUMBER = 6;
    public static final int SESSION_UUID_FIELD_NUMBER = 5;
    public static final int TEST_FIELD_NUMBER = 1;
    public static final int TOKEN_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private int activeSessionId_;
    private long activeSessionUptime_;
    private AdStats adStats_;
    private long appSessionAverageLength_;
    private volatile Object ext_;
    private byte memoizedIsInitialized;
    private long monotonicAppSessionAverageLength_;
    private long monotonicSessionUptime_;
    private int segmentId_;
    private long sessionId_;
    private long sessionUptime_;
    private volatile Object sessionUuid_;
    private boolean test_;
    private volatile Object token_;
    private static final Session DEFAULT_INSTANCE = new Session();
    private static final Parser<Session> PARSER = new AbstractParser<Session>() { // from class: com.appodeal.ads.api.Session.1
        @Override // com.explorestack.protobuf.Parser
        public Session parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Session(codedInputStream, extensionRegistryLite);
        }
    };

    private Session(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Session() {
        this.memoizedIsInitialized = (byte) -1;
        this.ext_ = "";
        this.token_ = "";
        this.sessionUuid_ = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Session();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Session(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.test_ = codedInputStream.readBool();
                            continue;
                        case 18:
                            this.ext_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 26:
                            this.token_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 32:
                            this.sessionId_ = codedInputStream.readInt64();
                            continue;
                        case 42:
                            this.sessionUuid_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 48:
                            this.sessionUptime_ = codedInputStream.readInt64();
                            continue;
                        case 56:
                            this.segmentId_ = codedInputStream.readInt32();
                            continue;
                        case 66:
                            AdStats adStats = this.adStats_;
                            AdStats.Builder builder = adStats != null ? adStats.toBuilder() : null;
                            AdStats adStats2 = (AdStats) codedInputStream.readMessage(AdStats.parser(), extensionRegistryLite);
                            this.adStats_ = adStats2;
                            if (builder != null) {
                                builder.mergeFrom(adStats2);
                                this.adStats_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 72:
                            this.monotonicSessionUptime_ = codedInputStream.readInt64();
                            continue;
                        case 80:
                            this.activeSessionUptime_ = codedInputStream.readInt64();
                            continue;
                        case 88:
                            this.activeSessionId_ = codedInputStream.readInt32();
                            continue;
                        case 96:
                            this.appSessionAverageLength_ = codedInputStream.readInt64();
                            continue;
                        case 104:
                            this.monotonicAppSessionAverageLength_ = codedInputStream.readInt64();
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
        return Api.internal_static_com_appodeal_ads_Session_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Session_fieldAccessorTable.ensureFieldAccessorsInitialized(Session.class, Builder.class);
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public boolean getTest() {
        return this.test_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public String getExt() {
        Object obj = this.ext_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ext_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public ByteString getExtBytes() {
        Object obj = this.ext_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ext_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public String getToken() {
        Object obj = this.token_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.token_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public ByteString getTokenBytes() {
        Object obj = this.token_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.token_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public long getSessionId() {
        return this.sessionId_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public String getSessionUuid() {
        Object obj = this.sessionUuid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sessionUuid_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public ByteString getSessionUuidBytes() {
        Object obj = this.sessionUuid_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sessionUuid_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public long getSessionUptime() {
        return this.sessionUptime_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public int getSegmentId() {
        return this.segmentId_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public boolean hasAdStats() {
        return this.adStats_ != null;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public AdStats getAdStats() {
        AdStats adStats = this.adStats_;
        return adStats == null ? AdStats.getDefaultInstance() : adStats;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public AdStatsOrBuilder getAdStatsOrBuilder() {
        return getAdStats();
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public long getMonotonicSessionUptime() {
        return this.monotonicSessionUptime_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    @Deprecated
    public long getActiveSessionUptime() {
        return this.activeSessionUptime_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    @Deprecated
    public int getActiveSessionId() {
        return this.activeSessionId_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public long getAppSessionAverageLength() {
        return this.appSessionAverageLength_;
    }

    @Override // com.appodeal.ads.api.SessionOrBuilder
    public long getMonotonicAppSessionAverageLength() {
        return this.monotonicAppSessionAverageLength_;
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
        boolean z = this.test_;
        if (z) {
            codedOutputStream.writeBool(1, z);
        }
        if (!getExtBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.ext_);
        }
        if (!getTokenBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.token_);
        }
        long j = this.sessionId_;
        if (j != 0) {
            codedOutputStream.writeInt64(4, j);
        }
        if (!getSessionUuidBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.sessionUuid_);
        }
        long j2 = this.sessionUptime_;
        if (j2 != 0) {
            codedOutputStream.writeInt64(6, j2);
        }
        int i = this.segmentId_;
        if (i != 0) {
            codedOutputStream.writeInt32(7, i);
        }
        if (this.adStats_ != null) {
            codedOutputStream.writeMessage(8, getAdStats());
        }
        long j3 = this.monotonicSessionUptime_;
        if (j3 != 0) {
            codedOutputStream.writeInt64(9, j3);
        }
        long j4 = this.activeSessionUptime_;
        if (j4 != 0) {
            codedOutputStream.writeInt64(10, j4);
        }
        int i2 = this.activeSessionId_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(11, i2);
        }
        long j5 = this.appSessionAverageLength_;
        if (j5 != 0) {
            codedOutputStream.writeInt64(12, j5);
        }
        long j6 = this.monotonicAppSessionAverageLength_;
        if (j6 != 0) {
            codedOutputStream.writeInt64(13, j6);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        boolean z = this.test_;
        int computeBoolSize = z ? CodedOutputStream.computeBoolSize(1, z) : 0;
        if (!getExtBytes().isEmpty()) {
            computeBoolSize += GeneratedMessageV3.computeStringSize(2, this.ext_);
        }
        if (!getTokenBytes().isEmpty()) {
            computeBoolSize += GeneratedMessageV3.computeStringSize(3, this.token_);
        }
        long j = this.sessionId_;
        if (j != 0) {
            computeBoolSize += CodedOutputStream.computeInt64Size(4, j);
        }
        if (!getSessionUuidBytes().isEmpty()) {
            computeBoolSize += GeneratedMessageV3.computeStringSize(5, this.sessionUuid_);
        }
        long j2 = this.sessionUptime_;
        if (j2 != 0) {
            computeBoolSize += CodedOutputStream.computeInt64Size(6, j2);
        }
        int i2 = this.segmentId_;
        if (i2 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(7, i2);
        }
        if (this.adStats_ != null) {
            computeBoolSize += CodedOutputStream.computeMessageSize(8, getAdStats());
        }
        long j3 = this.monotonicSessionUptime_;
        if (j3 != 0) {
            computeBoolSize += CodedOutputStream.computeInt64Size(9, j3);
        }
        long j4 = this.activeSessionUptime_;
        if (j4 != 0) {
            computeBoolSize += CodedOutputStream.computeInt64Size(10, j4);
        }
        int i3 = this.activeSessionId_;
        if (i3 != 0) {
            computeBoolSize += CodedOutputStream.computeInt32Size(11, i3);
        }
        long j5 = this.appSessionAverageLength_;
        if (j5 != 0) {
            computeBoolSize += CodedOutputStream.computeInt64Size(12, j5);
        }
        long j6 = this.monotonicAppSessionAverageLength_;
        if (j6 != 0) {
            computeBoolSize += CodedOutputStream.computeInt64Size(13, j6);
        }
        int serializedSize = computeBoolSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Session)) {
            return super.equals(obj);
        }
        Session session = (Session) obj;
        if (getTest() == session.getTest() && getExt().equals(session.getExt()) && getToken().equals(session.getToken()) && getSessionId() == session.getSessionId() && getSessionUuid().equals(session.getSessionUuid()) && getSessionUptime() == session.getSessionUptime() && getSegmentId() == session.getSegmentId() && hasAdStats() == session.hasAdStats()) {
            return (!hasAdStats() || getAdStats().equals(session.getAdStats())) && getMonotonicSessionUptime() == session.getMonotonicSessionUptime() && getActiveSessionUptime() == session.getActiveSessionUptime() && getActiveSessionId() == session.getActiveSessionId() && getAppSessionAverageLength() == session.getAppSessionAverageLength() && getMonotonicAppSessionAverageLength() == session.getMonotonicAppSessionAverageLength() && this.unknownFields.equals(session.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + Internal.hashBoolean(getTest())) * 37) + 2) * 53) + getExt().hashCode()) * 37) + 3) * 53) + getToken().hashCode()) * 37) + 4) * 53) + Internal.hashLong(getSessionId())) * 37) + 5) * 53) + getSessionUuid().hashCode()) * 37) + 6) * 53) + Internal.hashLong(getSessionUptime())) * 37) + 7) * 53) + getSegmentId();
        if (hasAdStats()) {
            hashCode = (((hashCode * 37) + 8) * 53) + getAdStats().hashCode();
        }
        int hashLong = (((((((((((((((((((((hashCode * 37) + 9) * 53) + Internal.hashLong(getMonotonicSessionUptime())) * 37) + 10) * 53) + Internal.hashLong(getActiveSessionUptime())) * 37) + 11) * 53) + getActiveSessionId()) * 37) + 12) * 53) + Internal.hashLong(getAppSessionAverageLength())) * 37) + 13) * 53) + Internal.hashLong(getMonotonicAppSessionAverageLength())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashLong;
        return hashLong;
    }

    public static Session parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Session parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Session parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Session parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Session parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Session parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Session parseFrom(InputStream inputStream) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Session parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Session parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Session) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Session parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Session) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Session parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Session parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Session session) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(session);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SessionOrBuilder {
        private int activeSessionId_;
        private long activeSessionUptime_;
        private SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> adStatsBuilder_;
        private AdStats adStats_;
        private long appSessionAverageLength_;
        private Object ext_;
        private long monotonicAppSessionAverageLength_;
        private long monotonicSessionUptime_;
        private int segmentId_;
        private long sessionId_;
        private long sessionUptime_;
        private Object sessionUuid_;
        private boolean test_;
        private Object token_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Session_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Session_fieldAccessorTable.ensureFieldAccessorsInitialized(Session.class, Builder.class);
        }

        private Builder() {
            this.ext_ = "";
            this.token_ = "";
            this.sessionUuid_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.ext_ = "";
            this.token_ = "";
            this.sessionUuid_ = "";
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Session.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.test_ = false;
            this.ext_ = "";
            this.token_ = "";
            this.sessionId_ = 0L;
            this.sessionUuid_ = "";
            this.sessionUptime_ = 0L;
            this.segmentId_ = 0;
            if (this.adStatsBuilder_ == null) {
                this.adStats_ = null;
            } else {
                this.adStats_ = null;
                this.adStatsBuilder_ = null;
            }
            this.monotonicSessionUptime_ = 0L;
            this.activeSessionUptime_ = 0L;
            this.activeSessionId_ = 0;
            this.appSessionAverageLength_ = 0L;
            this.monotonicAppSessionAverageLength_ = 0L;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Session_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Session getDefaultInstanceForType() {
            return Session.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Session build() {
            Session buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Session buildPartial() {
            Session session = new Session(this);
            session.test_ = this.test_;
            session.ext_ = this.ext_;
            session.token_ = this.token_;
            session.sessionId_ = this.sessionId_;
            session.sessionUuid_ = this.sessionUuid_;
            session.sessionUptime_ = this.sessionUptime_;
            session.segmentId_ = this.segmentId_;
            SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> singleFieldBuilderV3 = this.adStatsBuilder_;
            if (singleFieldBuilderV3 == null) {
                session.adStats_ = this.adStats_;
            } else {
                session.adStats_ = singleFieldBuilderV3.build();
            }
            session.monotonicSessionUptime_ = this.monotonicSessionUptime_;
            session.activeSessionUptime_ = this.activeSessionUptime_;
            session.activeSessionId_ = this.activeSessionId_;
            session.appSessionAverageLength_ = this.appSessionAverageLength_;
            session.monotonicAppSessionAverageLength_ = this.monotonicAppSessionAverageLength_;
            onBuilt();
            return session;
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
            if (message instanceof Session) {
                return mergeFrom((Session) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Session session) {
            if (session == Session.getDefaultInstance()) {
                return this;
            }
            if (session.getTest()) {
                setTest(session.getTest());
            }
            if (!session.getExt().isEmpty()) {
                this.ext_ = session.ext_;
                onChanged();
            }
            if (!session.getToken().isEmpty()) {
                this.token_ = session.token_;
                onChanged();
            }
            if (session.getSessionId() != 0) {
                setSessionId(session.getSessionId());
            }
            if (!session.getSessionUuid().isEmpty()) {
                this.sessionUuid_ = session.sessionUuid_;
                onChanged();
            }
            if (session.getSessionUptime() != 0) {
                setSessionUptime(session.getSessionUptime());
            }
            if (session.getSegmentId() != 0) {
                setSegmentId(session.getSegmentId());
            }
            if (session.hasAdStats()) {
                mergeAdStats(session.getAdStats());
            }
            if (session.getMonotonicSessionUptime() != 0) {
                setMonotonicSessionUptime(session.getMonotonicSessionUptime());
            }
            if (session.getActiveSessionUptime() != 0) {
                setActiveSessionUptime(session.getActiveSessionUptime());
            }
            if (session.getActiveSessionId() != 0) {
                setActiveSessionId(session.getActiveSessionId());
            }
            if (session.getAppSessionAverageLength() != 0) {
                setAppSessionAverageLength(session.getAppSessionAverageLength());
            }
            if (session.getMonotonicAppSessionAverageLength() != 0) {
                setMonotonicAppSessionAverageLength(session.getMonotonicAppSessionAverageLength());
            }
            mergeUnknownFields(session.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Session.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Session.access$1800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Session r3 = (com.appodeal.ads.api.Session) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Session r4 = (com.appodeal.ads.api.Session) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Session.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Session$Builder");
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public boolean getTest() {
            return this.test_;
        }

        public Builder setTest(boolean z) {
            this.test_ = z;
            onChanged();
            return this;
        }

        public Builder clearTest() {
            this.test_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public String getExt() {
            Object obj = this.ext_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ext_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public ByteString getExtBytes() {
            Object obj = this.ext_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ext_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setExt(String str) {
            str.getClass();
            this.ext_ = str;
            onChanged();
            return this;
        }

        public Builder clearExt() {
            this.ext_ = Session.getDefaultInstance().getExt();
            onChanged();
            return this;
        }

        public Builder setExtBytes(ByteString byteString) {
            byteString.getClass();
            Session.checkByteStringIsUtf8(byteString);
            this.ext_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public String getToken() {
            Object obj = this.token_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.token_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public ByteString getTokenBytes() {
            Object obj = this.token_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.token_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setToken(String str) {
            str.getClass();
            this.token_ = str;
            onChanged();
            return this;
        }

        public Builder clearToken() {
            this.token_ = Session.getDefaultInstance().getToken();
            onChanged();
            return this;
        }

        public Builder setTokenBytes(ByteString byteString) {
            byteString.getClass();
            Session.checkByteStringIsUtf8(byteString);
            this.token_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public long getSessionId() {
            return this.sessionId_;
        }

        public Builder setSessionId(long j) {
            this.sessionId_ = j;
            onChanged();
            return this;
        }

        public Builder clearSessionId() {
            this.sessionId_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public String getSessionUuid() {
            Object obj = this.sessionUuid_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sessionUuid_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public ByteString getSessionUuidBytes() {
            Object obj = this.sessionUuid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionUuid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setSessionUuid(String str) {
            str.getClass();
            this.sessionUuid_ = str;
            onChanged();
            return this;
        }

        public Builder clearSessionUuid() {
            this.sessionUuid_ = Session.getDefaultInstance().getSessionUuid();
            onChanged();
            return this;
        }

        public Builder setSessionUuidBytes(ByteString byteString) {
            byteString.getClass();
            Session.checkByteStringIsUtf8(byteString);
            this.sessionUuid_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public long getSessionUptime() {
            return this.sessionUptime_;
        }

        public Builder setSessionUptime(long j) {
            this.sessionUptime_ = j;
            onChanged();
            return this;
        }

        public Builder clearSessionUptime() {
            this.sessionUptime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public int getSegmentId() {
            return this.segmentId_;
        }

        public Builder setSegmentId(int i) {
            this.segmentId_ = i;
            onChanged();
            return this;
        }

        public Builder clearSegmentId() {
            this.segmentId_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public boolean hasAdStats() {
            return (this.adStatsBuilder_ == null && this.adStats_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public AdStats getAdStats() {
            SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> singleFieldBuilderV3 = this.adStatsBuilder_;
            if (singleFieldBuilderV3 == null) {
                AdStats adStats = this.adStats_;
                return adStats == null ? AdStats.getDefaultInstance() : adStats;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setAdStats(AdStats adStats) {
            SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> singleFieldBuilderV3 = this.adStatsBuilder_;
            if (singleFieldBuilderV3 == null) {
                adStats.getClass();
                this.adStats_ = adStats;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(adStats);
            }
            return this;
        }

        public Builder setAdStats(AdStats.Builder builder) {
            SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> singleFieldBuilderV3 = this.adStatsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.adStats_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeAdStats(AdStats adStats) {
            SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> singleFieldBuilderV3 = this.adStatsBuilder_;
            if (singleFieldBuilderV3 == null) {
                AdStats adStats2 = this.adStats_;
                if (adStats2 != null) {
                    this.adStats_ = AdStats.newBuilder(adStats2).mergeFrom(adStats).buildPartial();
                } else {
                    this.adStats_ = adStats;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(adStats);
            }
            return this;
        }

        public Builder clearAdStats() {
            if (this.adStatsBuilder_ == null) {
                this.adStats_ = null;
                onChanged();
            } else {
                this.adStats_ = null;
                this.adStatsBuilder_ = null;
            }
            return this;
        }

        public AdStats.Builder getAdStatsBuilder() {
            onChanged();
            return getAdStatsFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public AdStatsOrBuilder getAdStatsOrBuilder() {
            SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> singleFieldBuilderV3 = this.adStatsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            AdStats adStats = this.adStats_;
            return adStats == null ? AdStats.getDefaultInstance() : adStats;
        }

        private SingleFieldBuilderV3<AdStats, AdStats.Builder, AdStatsOrBuilder> getAdStatsFieldBuilder() {
            if (this.adStatsBuilder_ == null) {
                this.adStatsBuilder_ = new SingleFieldBuilderV3<>(getAdStats(), getParentForChildren(), isClean());
                this.adStats_ = null;
            }
            return this.adStatsBuilder_;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public long getMonotonicSessionUptime() {
            return this.monotonicSessionUptime_;
        }

        public Builder setMonotonicSessionUptime(long j) {
            this.monotonicSessionUptime_ = j;
            onChanged();
            return this;
        }

        public Builder clearMonotonicSessionUptime() {
            this.monotonicSessionUptime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        @Deprecated
        public long getActiveSessionUptime() {
            return this.activeSessionUptime_;
        }

        @Deprecated
        public Builder setActiveSessionUptime(long j) {
            this.activeSessionUptime_ = j;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearActiveSessionUptime() {
            this.activeSessionUptime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        @Deprecated
        public int getActiveSessionId() {
            return this.activeSessionId_;
        }

        @Deprecated
        public Builder setActiveSessionId(int i) {
            this.activeSessionId_ = i;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearActiveSessionId() {
            this.activeSessionId_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public long getAppSessionAverageLength() {
            return this.appSessionAverageLength_;
        }

        public Builder setAppSessionAverageLength(long j) {
            this.appSessionAverageLength_ = j;
            onChanged();
            return this;
        }

        public Builder clearAppSessionAverageLength() {
            this.appSessionAverageLength_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.SessionOrBuilder
        public long getMonotonicAppSessionAverageLength() {
            return this.monotonicAppSessionAverageLength_;
        }

        public Builder setMonotonicAppSessionAverageLength(long j) {
            this.monotonicAppSessionAverageLength_ = j;
            onChanged();
            return this;
        }

        public Builder clearMonotonicAppSessionAverageLength() {
            this.monotonicAppSessionAverageLength_ = 0L;
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

    public static Session getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Session> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Session> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Session getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
