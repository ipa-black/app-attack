package com.appodeal.ads.api;

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
import com.explorestack.protobuf.ProtocolMessageEnum;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class Geo extends GeneratedMessageV3 implements GeoOrBuilder {
    public static final int LAT_FIELD_NUMBER = 4;
    public static final int LOCAL_TIME_FIELD_NUMBER = 2;
    public static final int LON_FIELD_NUMBER = 5;
    public static final int LT_FIELD_NUMBER = 3;
    public static final int UTCOFFSET_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private float lat_;
    private long localTime_;
    private float lon_;
    private int lt_;
    private byte memoizedIsInitialized;
    private int utcoffset_;
    private static final Geo DEFAULT_INSTANCE = new Geo();
    private static final Parser<Geo> PARSER = new AbstractParser<Geo>() { // from class: com.appodeal.ads.api.Geo.1
        @Override // com.explorestack.protobuf.Parser
        public Geo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Geo(codedInputStream, extensionRegistryLite);
        }
    };

    private Geo(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Geo() {
        this.memoizedIsInitialized = (byte) -1;
        this.lt_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Geo();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Geo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            if (readTag == 8) {
                                this.utcoffset_ = codedInputStream.readInt32();
                            } else if (readTag == 16) {
                                this.localTime_ = codedInputStream.readInt64();
                            } else if (readTag == 24) {
                                this.lt_ = codedInputStream.readEnum();
                            } else if (readTag == 37) {
                                this.lat_ = codedInputStream.readFloat();
                            } else if (readTag == 45) {
                                this.lon_ = codedInputStream.readFloat();
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
        return Api.internal_static_com_appodeal_ads_Geo_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Geo_fieldAccessorTable.ensureFieldAccessorsInitialized(Geo.class, Builder.class);
    }

    /* loaded from: classes2.dex */
    public enum LocationType implements ProtocolMessageEnum {
        LOCATIONTYPE_UNKNOWN(0),
        GPS(1),
        IP(2),
        USERPROVIDED(3),
        UNRECOGNIZED(-1);
        
        public static final int GPS_VALUE = 1;
        public static final int IP_VALUE = 2;
        public static final int LOCATIONTYPE_UNKNOWN_VALUE = 0;
        public static final int USERPROVIDED_VALUE = 3;
        private final int value;
        private static final Internal.EnumLiteMap<LocationType> internalValueMap = new Internal.EnumLiteMap<LocationType>() { // from class: com.appodeal.ads.api.Geo.LocationType.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public LocationType findValueByNumber(int i) {
                return LocationType.forNumber(i);
            }
        };
        private static final LocationType[] VALUES = values();

        @Override // com.explorestack.protobuf.ProtocolMessageEnum, com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static LocationType valueOf(int i) {
            return forNumber(i);
        }

        public static LocationType forNumber(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return USERPROVIDED;
                    }
                    return IP;
                }
                return GPS;
            }
            return LOCATIONTYPE_UNKNOWN;
        }

        public static Internal.EnumLiteMap<LocationType> internalGetValueMap() {
            return internalValueMap;
        }

        @Override // com.explorestack.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this == UNRECOGNIZED) {
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }
            return getDescriptor().getValues().get(ordinal());
        }

        @Override // com.explorestack.protobuf.ProtocolMessageEnum
        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Geo.getDescriptor().getEnumTypes().get(0);
        }

        public static LocationType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        LocationType(int i) {
            this.value = i;
        }
    }

    @Override // com.appodeal.ads.api.GeoOrBuilder
    public int getUtcoffset() {
        return this.utcoffset_;
    }

    @Override // com.appodeal.ads.api.GeoOrBuilder
    public long getLocalTime() {
        return this.localTime_;
    }

    @Override // com.appodeal.ads.api.GeoOrBuilder
    public int getLtValue() {
        return this.lt_;
    }

    @Override // com.appodeal.ads.api.GeoOrBuilder
    public LocationType getLt() {
        LocationType valueOf = LocationType.valueOf(this.lt_);
        return valueOf == null ? LocationType.UNRECOGNIZED : valueOf;
    }

    @Override // com.appodeal.ads.api.GeoOrBuilder
    public float getLat() {
        return this.lat_;
    }

    @Override // com.appodeal.ads.api.GeoOrBuilder
    public float getLon() {
        return this.lon_;
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
        int i = this.utcoffset_;
        if (i != 0) {
            codedOutputStream.writeInt32(1, i);
        }
        long j = this.localTime_;
        if (j != 0) {
            codedOutputStream.writeInt64(2, j);
        }
        if (this.lt_ != LocationType.LOCATIONTYPE_UNKNOWN.getNumber()) {
            codedOutputStream.writeEnum(3, this.lt_);
        }
        float f2 = this.lat_;
        if (f2 != 0.0f) {
            codedOutputStream.writeFloat(4, f2);
        }
        float f3 = this.lon_;
        if (f3 != 0.0f) {
            codedOutputStream.writeFloat(5, f3);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = this.utcoffset_;
        int computeInt32Size = i2 != 0 ? CodedOutputStream.computeInt32Size(1, i2) : 0;
        long j = this.localTime_;
        if (j != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(2, j);
        }
        if (this.lt_ != LocationType.LOCATIONTYPE_UNKNOWN.getNumber()) {
            computeInt32Size += CodedOutputStream.computeEnumSize(3, this.lt_);
        }
        float f2 = this.lat_;
        if (f2 != 0.0f) {
            computeInt32Size += CodedOutputStream.computeFloatSize(4, f2);
        }
        float f3 = this.lon_;
        if (f3 != 0.0f) {
            computeInt32Size += CodedOutputStream.computeFloatSize(5, f3);
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
        if (!(obj instanceof Geo)) {
            return super.equals(obj);
        }
        Geo geo = (Geo) obj;
        return getUtcoffset() == geo.getUtcoffset() && getLocalTime() == geo.getLocalTime() && this.lt_ == geo.lt_ && Float.floatToIntBits(getLat()) == Float.floatToIntBits(geo.getLat()) && Float.floatToIntBits(getLon()) == Float.floatToIntBits(geo.getLon()) && this.unknownFields.equals(geo.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUtcoffset()) * 37) + 2) * 53) + Internal.hashLong(getLocalTime())) * 37) + 3) * 53) + this.lt_) * 37) + 4) * 53) + Float.floatToIntBits(getLat())) * 37) + 5) * 53) + Float.floatToIntBits(getLon())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    public static Geo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Geo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Geo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Geo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Geo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Geo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Geo parseFrom(InputStream inputStream) throws IOException {
        return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Geo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Geo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Geo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Geo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Geo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Geo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Geo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Geo geo) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(geo);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements GeoOrBuilder {
        private float lat_;
        private long localTime_;
        private float lon_;
        private int lt_;
        private int utcoffset_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Geo_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Geo_fieldAccessorTable.ensureFieldAccessorsInitialized(Geo.class, Builder.class);
        }

        private Builder() {
            this.lt_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.lt_ = 0;
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Geo.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.utcoffset_ = 0;
            this.localTime_ = 0L;
            this.lt_ = 0;
            this.lat_ = 0.0f;
            this.lon_ = 0.0f;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Geo_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Geo getDefaultInstanceForType() {
            return Geo.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Geo build() {
            Geo buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Geo buildPartial() {
            Geo geo = new Geo(this);
            geo.utcoffset_ = this.utcoffset_;
            geo.localTime_ = this.localTime_;
            geo.lt_ = this.lt_;
            geo.lat_ = this.lat_;
            geo.lon_ = this.lon_;
            onBuilt();
            return geo;
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
            if (message instanceof Geo) {
                return mergeFrom((Geo) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Geo geo) {
            if (geo == Geo.getDefaultInstance()) {
                return this;
            }
            if (geo.getUtcoffset() != 0) {
                setUtcoffset(geo.getUtcoffset());
            }
            if (geo.getLocalTime() != 0) {
                setLocalTime(geo.getLocalTime());
            }
            if (geo.lt_ != 0) {
                setLtValue(geo.getLtValue());
            }
            if (geo.getLat() != 0.0f) {
                setLat(geo.getLat());
            }
            if (geo.getLon() != 0.0f) {
                setLon(geo.getLon());
            }
            mergeUnknownFields(geo.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Geo.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Geo.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Geo r3 = (com.appodeal.ads.api.Geo) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Geo r4 = (com.appodeal.ads.api.Geo) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Geo.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Geo$Builder");
        }

        @Override // com.appodeal.ads.api.GeoOrBuilder
        public int getUtcoffset() {
            return this.utcoffset_;
        }

        public Builder setUtcoffset(int i) {
            this.utcoffset_ = i;
            onChanged();
            return this;
        }

        public Builder clearUtcoffset() {
            this.utcoffset_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GeoOrBuilder
        public long getLocalTime() {
            return this.localTime_;
        }

        public Builder setLocalTime(long j) {
            this.localTime_ = j;
            onChanged();
            return this;
        }

        public Builder clearLocalTime() {
            this.localTime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GeoOrBuilder
        public int getLtValue() {
            return this.lt_;
        }

        public Builder setLtValue(int i) {
            this.lt_ = i;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GeoOrBuilder
        public LocationType getLt() {
            LocationType valueOf = LocationType.valueOf(this.lt_);
            return valueOf == null ? LocationType.UNRECOGNIZED : valueOf;
        }

        public Builder setLt(LocationType locationType) {
            locationType.getClass();
            this.lt_ = locationType.getNumber();
            onChanged();
            return this;
        }

        public Builder clearLt() {
            this.lt_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GeoOrBuilder
        public float getLat() {
            return this.lat_;
        }

        public Builder setLat(float f2) {
            this.lat_ = f2;
            onChanged();
            return this;
        }

        public Builder clearLat() {
            this.lat_ = 0.0f;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.GeoOrBuilder
        public float getLon() {
            return this.lon_;
        }

        public Builder setLon(float f2) {
            this.lon_ = f2;
            onChanged();
            return this;
        }

        public Builder clearLon() {
            this.lon_ = 0.0f;
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

    public static Geo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Geo> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Geo> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Geo getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
