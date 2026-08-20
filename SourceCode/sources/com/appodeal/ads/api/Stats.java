package com.appodeal.ads.api;

import com.appodeal.ads.api.Adapter;
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
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolMessageEnum;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class Stats extends GeneratedMessageV3 implements StatsOrBuilder {
    public static final int ADAPTER_FIELD_NUMBER = 7;
    public static final int AD_UNIT_FIELD_NUMBER = 6;
    public static final int CAPACITY_FIELD_NUMBER = 1;
    public static final int COMPLETED_FIELD_NUMBER = 5;
    public static final int FINISH_FIELD_NUMBER = 3;
    public static final int START_FIELD_NUMBER = 2;
    public static final int SUCCESSFUL_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private List<AdUnit> adUnit_;
    private List<Adapter> adapter_;
    private int capacity_;
    private boolean completed_;
    private long finish_;
    private byte memoizedIsInitialized;
    private long start_;
    private boolean successful_;
    private static final Stats DEFAULT_INSTANCE = new Stats();
    private static final Parser<Stats> PARSER = new AbstractParser<Stats>() { // from class: com.appodeal.ads.api.Stats.1
        @Override // com.explorestack.protobuf.Parser
        public Stats parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Stats(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes2.dex */
    public interface AdUnitOrBuilder extends MessageOrBuilder {
        double getEcpm();

        long getFinish();

        String getId();

        ByteString getIdBytes();

        boolean getPrecache();

        AdUnitRequestResult getResult();

        int getResultValue();

        long getStart();
    }

    private Stats(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Stats() {
        this.memoizedIsInitialized = (byte) -1;
        this.adUnit_ = Collections.emptyList();
        this.adapter_ = Collections.emptyList();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Stats();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Stats(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        if (readTag == 8) {
                            this.capacity_ = codedInputStream.readInt32();
                        } else if (readTag == 16) {
                            this.start_ = codedInputStream.readInt64();
                        } else if (readTag == 24) {
                            this.finish_ = codedInputStream.readInt64();
                        } else if (readTag == 32) {
                            this.successful_ = codedInputStream.readBool();
                        } else if (readTag == 40) {
                            this.completed_ = codedInputStream.readBool();
                        } else if (readTag == 50) {
                            if (!(z2 & true)) {
                                this.adUnit_ = new ArrayList();
                                z2 |= true;
                            }
                            this.adUnit_.add(codedInputStream.readMessage(AdUnit.parser(), extensionRegistryLite));
                        } else if (readTag == 58) {
                            if (!(z2 & true)) {
                                this.adapter_ = new ArrayList();
                                z2 |= true;
                            }
                            this.adapter_.add(codedInputStream.readMessage(Adapter.parser(), extensionRegistryLite));
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
                    this.adUnit_ = Collections.unmodifiableList(this.adUnit_);
                }
                if (z2 & true) {
                    this.adapter_ = Collections.unmodifiableList(this.adapter_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_Stats_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Stats_fieldAccessorTable.ensureFieldAccessorsInitialized(Stats.class, Builder.class);
    }

    /* loaded from: classes2.dex */
    public enum AdUnitRequestResult implements ProtocolMessageEnum {
        SUCCESSFUL(0),
        NOFILL(1),
        TIMEOUTREACHED(2),
        EXCEPTION(3),
        UNDEFINEDADAPTER(4),
        INCORRECTADUNIT(5),
        INVALIDASSETS(6),
        CANCELED(7),
        UNRECOGNIZED(-1);
        
        public static final int CANCELED_VALUE = 7;
        public static final int EXCEPTION_VALUE = 3;
        public static final int INCORRECTADUNIT_VALUE = 5;
        public static final int INVALIDASSETS_VALUE = 6;
        public static final int NOFILL_VALUE = 1;
        public static final int SUCCESSFUL_VALUE = 0;
        public static final int TIMEOUTREACHED_VALUE = 2;
        public static final int UNDEFINEDADAPTER_VALUE = 4;
        private final int value;
        private static final Internal.EnumLiteMap<AdUnitRequestResult> internalValueMap = new Internal.EnumLiteMap<AdUnitRequestResult>() { // from class: com.appodeal.ads.api.Stats.AdUnitRequestResult.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public AdUnitRequestResult findValueByNumber(int i) {
                return AdUnitRequestResult.forNumber(i);
            }
        };
        private static final AdUnitRequestResult[] VALUES = values();

        @Override // com.explorestack.protobuf.ProtocolMessageEnum, com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static AdUnitRequestResult valueOf(int i) {
            return forNumber(i);
        }

        public static AdUnitRequestResult forNumber(int i) {
            switch (i) {
                case 0:
                    return SUCCESSFUL;
                case 1:
                    return NOFILL;
                case 2:
                    return TIMEOUTREACHED;
                case 3:
                    return EXCEPTION;
                case 4:
                    return UNDEFINEDADAPTER;
                case 5:
                    return INCORRECTADUNIT;
                case 6:
                    return INVALIDASSETS;
                case 7:
                    return CANCELED;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<AdUnitRequestResult> internalGetValueMap() {
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
            return Stats.getDescriptor().getEnumTypes().get(0);
        }

        public static AdUnitRequestResult valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        AdUnitRequestResult(int i) {
            this.value = i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class AdUnit extends GeneratedMessageV3 implements AdUnitOrBuilder {
        public static final int ECPM_FIELD_NUMBER = 6;
        public static final int FINISH_FIELD_NUMBER = 3;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int PRECACHE_FIELD_NUMBER = 5;
        public static final int RESULT_FIELD_NUMBER = 4;
        public static final int START_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private double ecpm_;
        private long finish_;
        private volatile Object id_;
        private byte memoizedIsInitialized;
        private boolean precache_;
        private int result_;
        private long start_;
        private static final AdUnit DEFAULT_INSTANCE = new AdUnit();
        private static final Parser<AdUnit> PARSER = new AbstractParser<AdUnit>() { // from class: com.appodeal.ads.api.Stats.AdUnit.1
            @Override // com.explorestack.protobuf.Parser
            public AdUnit parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AdUnit(codedInputStream, extensionRegistryLite);
            }
        };

        private AdUnit(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        private AdUnit() {
            this.memoizedIsInitialized = (byte) -1;
            this.id_ = "";
            this.result_ = 0;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new AdUnit();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        private AdUnit(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.id_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 16) {
                                this.start_ = codedInputStream.readInt64();
                            } else if (readTag == 24) {
                                this.finish_ = codedInputStream.readInt64();
                            } else if (readTag == 32) {
                                this.result_ = codedInputStream.readEnum();
                            } else if (readTag == 40) {
                                this.precache_ = codedInputStream.readBool();
                            } else if (readTag == 49) {
                                this.ecpm_ = codedInputStream.readDouble();
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
            return Api.internal_static_com_appodeal_ads_Stats_AdUnit_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Stats_AdUnit_fieldAccessorTable.ensureFieldAccessorsInitialized(AdUnit.class, Builder.class);
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public long getStart() {
            return this.start_;
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public long getFinish() {
            return this.finish_;
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public int getResultValue() {
            return this.result_;
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public AdUnitRequestResult getResult() {
            AdUnitRequestResult valueOf = AdUnitRequestResult.valueOf(this.result_);
            return valueOf == null ? AdUnitRequestResult.UNRECOGNIZED : valueOf;
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public boolean getPrecache() {
            return this.precache_;
        }

        @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
        public double getEcpm() {
            return this.ecpm_;
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
            if (!getIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            long j = this.start_;
            if (j != 0) {
                codedOutputStream.writeInt64(2, j);
            }
            long j2 = this.finish_;
            if (j2 != 0) {
                codedOutputStream.writeInt64(3, j2);
            }
            if (this.result_ != AdUnitRequestResult.SUCCESSFUL.getNumber()) {
                codedOutputStream.writeEnum(4, this.result_);
            }
            boolean z = this.precache_;
            if (z) {
                codedOutputStream.writeBool(5, z);
            }
            double d2 = this.ecpm_;
            if (d2 != 0.0d) {
                codedOutputStream.writeDouble(6, d2);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) : 0;
            long j = this.start_;
            if (j != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(2, j);
            }
            long j2 = this.finish_;
            if (j2 != 0) {
                computeStringSize += CodedOutputStream.computeInt64Size(3, j2);
            }
            if (this.result_ != AdUnitRequestResult.SUCCESSFUL.getNumber()) {
                computeStringSize += CodedOutputStream.computeEnumSize(4, this.result_);
            }
            boolean z = this.precache_;
            if (z) {
                computeStringSize += CodedOutputStream.computeBoolSize(5, z);
            }
            double d2 = this.ecpm_;
            if (d2 != 0.0d) {
                computeStringSize += CodedOutputStream.computeDoubleSize(6, d2);
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
            if (!(obj instanceof AdUnit)) {
                return super.equals(obj);
            }
            AdUnit adUnit = (AdUnit) obj;
            return getId().equals(adUnit.getId()) && getStart() == adUnit.getStart() && getFinish() == adUnit.getFinish() && this.result_ == adUnit.result_ && getPrecache() == adUnit.getPrecache() && Double.doubleToLongBits(getEcpm()) == Double.doubleToLongBits(adUnit.getEcpm()) && this.unknownFields.equals(adUnit.unknownFields);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(getStart())) * 37) + 3) * 53) + Internal.hashLong(getFinish())) * 37) + 4) * 53) + this.result_) * 37) + 5) * 53) + Internal.hashBoolean(getPrecache())) * 37) + 6) * 53) + Internal.hashLong(Double.doubleToLongBits(getEcpm()))) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static AdUnit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static AdUnit parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AdUnit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static AdUnit parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static AdUnit parseFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static AdUnit parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static AdUnit parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static AdUnit parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(AdUnit adUnit) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adUnit);
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
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AdUnitOrBuilder {
            private double ecpm_;
            private long finish_;
            private Object id_;
            private boolean precache_;
            private int result_;
            private long start_;

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return Api.internal_static_com_appodeal_ads_Stats_AdUnit_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return Api.internal_static_com_appodeal_ads_Stats_AdUnit_fieldAccessorTable.ensureFieldAccessorsInitialized(AdUnit.class, Builder.class);
            }

            private Builder() {
                this.id_ = "";
                this.result_ = 0;
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.id_ = "";
                this.result_ = 0;
                maybeForceBuilderInitialization();
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = AdUnit.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.id_ = "";
                this.start_ = 0L;
                this.finish_ = 0L;
                this.result_ = 0;
                this.precache_ = false;
                this.ecpm_ = 0.0d;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return Api.internal_static_com_appodeal_ads_Stats_AdUnit_descriptor;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public AdUnit getDefaultInstanceForType() {
                return AdUnit.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdUnit build() {
                AdUnit buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdUnit buildPartial() {
                AdUnit adUnit = new AdUnit(this);
                adUnit.id_ = this.id_;
                adUnit.start_ = this.start_;
                adUnit.finish_ = this.finish_;
                adUnit.result_ = this.result_;
                adUnit.precache_ = this.precache_;
                adUnit.ecpm_ = this.ecpm_;
                onBuilt();
                return adUnit;
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
                if (message instanceof AdUnit) {
                    return mergeFrom((AdUnit) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AdUnit adUnit) {
                if (adUnit == AdUnit.getDefaultInstance()) {
                    return this;
                }
                if (!adUnit.getId().isEmpty()) {
                    this.id_ = adUnit.id_;
                    onChanged();
                }
                if (adUnit.getStart() != 0) {
                    setStart(adUnit.getStart());
                }
                if (adUnit.getFinish() != 0) {
                    setFinish(adUnit.getFinish());
                }
                if (adUnit.result_ != 0) {
                    setResultValue(adUnit.getResultValue());
                }
                if (adUnit.getPrecache()) {
                    setPrecache(adUnit.getPrecache());
                }
                if (adUnit.getEcpm() != 0.0d) {
                    setEcpm(adUnit.getEcpm());
                }
                mergeUnknownFields(adUnit.unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.appodeal.ads.api.Stats.AdUnit.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Stats.AdUnit.access$1100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.appodeal.ads.api.Stats$AdUnit r3 = (com.appodeal.ads.api.Stats.AdUnit) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.appodeal.ads.api.Stats$AdUnit r4 = (com.appodeal.ads.api.Stats.AdUnit) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Stats.AdUnit.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Stats$AdUnit$Builder");
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public Builder setId(String str) {
                str.getClass();
                this.id_ = str;
                onChanged();
                return this;
            }

            public Builder clearId() {
                this.id_ = AdUnit.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public Builder setIdBytes(ByteString byteString) {
                byteString.getClass();
                AdUnit.checkByteStringIsUtf8(byteString);
                this.id_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public long getStart() {
                return this.start_;
            }

            public Builder setStart(long j) {
                this.start_ = j;
                onChanged();
                return this;
            }

            public Builder clearStart() {
                this.start_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public long getFinish() {
                return this.finish_;
            }

            public Builder setFinish(long j) {
                this.finish_ = j;
                onChanged();
                return this;
            }

            public Builder clearFinish() {
                this.finish_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public int getResultValue() {
                return this.result_;
            }

            public Builder setResultValue(int i) {
                this.result_ = i;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public AdUnitRequestResult getResult() {
                AdUnitRequestResult valueOf = AdUnitRequestResult.valueOf(this.result_);
                return valueOf == null ? AdUnitRequestResult.UNRECOGNIZED : valueOf;
            }

            public Builder setResult(AdUnitRequestResult adUnitRequestResult) {
                adUnitRequestResult.getClass();
                this.result_ = adUnitRequestResult.getNumber();
                onChanged();
                return this;
            }

            public Builder clearResult() {
                this.result_ = 0;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public boolean getPrecache() {
                return this.precache_;
            }

            public Builder setPrecache(boolean z) {
                this.precache_ = z;
                onChanged();
                return this;
            }

            public Builder clearPrecache() {
                this.precache_ = false;
                onChanged();
                return this;
            }

            @Override // com.appodeal.ads.api.Stats.AdUnitOrBuilder
            public double getEcpm() {
                return this.ecpm_;
            }

            public Builder setEcpm(double d2) {
                this.ecpm_ = d2;
                onChanged();
                return this;
            }

            public Builder clearEcpm() {
                this.ecpm_ = 0.0d;
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

        public static AdUnit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<AdUnit> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Parser<AdUnit> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public AdUnit getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public int getCapacity() {
        return this.capacity_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public long getStart() {
        return this.start_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public long getFinish() {
        return this.finish_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public boolean getSuccessful() {
        return this.successful_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public boolean getCompleted() {
        return this.completed_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public List<AdUnit> getAdUnitList() {
        return this.adUnit_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public List<? extends AdUnitOrBuilder> getAdUnitOrBuilderList() {
        return this.adUnit_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public int getAdUnitCount() {
        return this.adUnit_.size();
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public AdUnit getAdUnit(int i) {
        return this.adUnit_.get(i);
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public AdUnitOrBuilder getAdUnitOrBuilder(int i) {
        return this.adUnit_.get(i);
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public List<Adapter> getAdapterList() {
        return this.adapter_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public List<? extends AdapterOrBuilder> getAdapterOrBuilderList() {
        return this.adapter_;
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public int getAdapterCount() {
        return this.adapter_.size();
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public Adapter getAdapter(int i) {
        return this.adapter_.get(i);
    }

    @Override // com.appodeal.ads.api.StatsOrBuilder
    public AdapterOrBuilder getAdapterOrBuilder(int i) {
        return this.adapter_.get(i);
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
        int i = this.capacity_;
        if (i != 0) {
            codedOutputStream.writeInt32(1, i);
        }
        long j = this.start_;
        if (j != 0) {
            codedOutputStream.writeInt64(2, j);
        }
        long j2 = this.finish_;
        if (j2 != 0) {
            codedOutputStream.writeInt64(3, j2);
        }
        boolean z = this.successful_;
        if (z) {
            codedOutputStream.writeBool(4, z);
        }
        boolean z2 = this.completed_;
        if (z2) {
            codedOutputStream.writeBool(5, z2);
        }
        for (int i2 = 0; i2 < this.adUnit_.size(); i2++) {
            codedOutputStream.writeMessage(6, this.adUnit_.get(i2));
        }
        for (int i3 = 0; i3 < this.adapter_.size(); i3++) {
            codedOutputStream.writeMessage(7, this.adapter_.get(i3));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = this.capacity_;
        int computeInt32Size = i2 != 0 ? CodedOutputStream.computeInt32Size(1, i2) : 0;
        long j = this.start_;
        if (j != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(2, j);
        }
        long j2 = this.finish_;
        if (j2 != 0) {
            computeInt32Size += CodedOutputStream.computeInt64Size(3, j2);
        }
        boolean z = this.successful_;
        if (z) {
            computeInt32Size += CodedOutputStream.computeBoolSize(4, z);
        }
        boolean z2 = this.completed_;
        if (z2) {
            computeInt32Size += CodedOutputStream.computeBoolSize(5, z2);
        }
        for (int i3 = 0; i3 < this.adUnit_.size(); i3++) {
            computeInt32Size += CodedOutputStream.computeMessageSize(6, this.adUnit_.get(i3));
        }
        for (int i4 = 0; i4 < this.adapter_.size(); i4++) {
            computeInt32Size += CodedOutputStream.computeMessageSize(7, this.adapter_.get(i4));
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
        if (!(obj instanceof Stats)) {
            return super.equals(obj);
        }
        Stats stats = (Stats) obj;
        return getCapacity() == stats.getCapacity() && getStart() == stats.getStart() && getFinish() == stats.getFinish() && getSuccessful() == stats.getSuccessful() && getCompleted() == stats.getCompleted() && getAdUnitList().equals(stats.getAdUnitList()) && getAdapterList().equals(stats.getAdapterList()) && this.unknownFields.equals(stats.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCapacity()) * 37) + 2) * 53) + Internal.hashLong(getStart())) * 37) + 3) * 53) + Internal.hashLong(getFinish())) * 37) + 4) * 53) + Internal.hashBoolean(getSuccessful())) * 37) + 5) * 53) + Internal.hashBoolean(getCompleted());
        if (getAdUnitCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + getAdUnitList().hashCode();
        }
        if (getAdapterCount() > 0) {
            hashCode = (((hashCode * 37) + 7) * 53) + getAdapterList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    public static Stats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Stats parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Stats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Stats parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Stats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Stats parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Stats parseFrom(InputStream inputStream) throws IOException {
        return (Stats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Stats parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Stats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Stats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Stats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Stats parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Stats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Stats parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Stats) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Stats parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Stats) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Stats stats) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(stats);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements StatsOrBuilder {
        private RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> adUnitBuilder_;
        private List<AdUnit> adUnit_;
        private RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> adapterBuilder_;
        private List<Adapter> adapter_;
        private int bitField0_;
        private int capacity_;
        private boolean completed_;
        private long finish_;
        private long start_;
        private boolean successful_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Stats_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Stats_fieldAccessorTable.ensureFieldAccessorsInitialized(Stats.class, Builder.class);
        }

        private Builder() {
            this.adUnit_ = Collections.emptyList();
            this.adapter_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.adUnit_ = Collections.emptyList();
            this.adapter_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            if (Stats.alwaysUseFieldBuilders) {
                getAdUnitFieldBuilder();
                getAdapterFieldBuilder();
            }
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.capacity_ = 0;
            this.start_ = 0L;
            this.finish_ = 0L;
            this.successful_ = false;
            this.completed_ = false;
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.adUnit_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV32 = this.adapterBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                this.adapter_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV32.clear();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Stats_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Stats getDefaultInstanceForType() {
            return Stats.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Stats build() {
            Stats buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Stats buildPartial() {
            Stats stats = new Stats(this);
            stats.capacity_ = this.capacity_;
            stats.start_ = this.start_;
            stats.finish_ = this.finish_;
            stats.successful_ = this.successful_;
            stats.completed_ = this.completed_;
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                stats.adUnit_ = repeatedFieldBuilderV3.build();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.adUnit_ = Collections.unmodifiableList(this.adUnit_);
                    this.bitField0_ &= -2;
                }
                stats.adUnit_ = this.adUnit_;
            }
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV32 = this.adapterBuilder_;
            if (repeatedFieldBuilderV32 != null) {
                stats.adapter_ = repeatedFieldBuilderV32.build();
            } else {
                if ((this.bitField0_ & 2) != 0) {
                    this.adapter_ = Collections.unmodifiableList(this.adapter_);
                    this.bitField0_ &= -3;
                }
                stats.adapter_ = this.adapter_;
            }
            onBuilt();
            return stats;
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
            if (message instanceof Stats) {
                return mergeFrom((Stats) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Stats stats) {
            if (stats == Stats.getDefaultInstance()) {
                return this;
            }
            if (stats.getCapacity() != 0) {
                setCapacity(stats.getCapacity());
            }
            if (stats.getStart() != 0) {
                setStart(stats.getStart());
            }
            if (stats.getFinish() != 0) {
                setFinish(stats.getFinish());
            }
            if (stats.getSuccessful()) {
                setSuccessful(stats.getSuccessful());
            }
            if (stats.getCompleted()) {
                setCompleted(stats.getCompleted());
            }
            if (this.adUnitBuilder_ == null) {
                if (!stats.adUnit_.isEmpty()) {
                    if (this.adUnit_.isEmpty()) {
                        this.adUnit_ = stats.adUnit_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureAdUnitIsMutable();
                        this.adUnit_.addAll(stats.adUnit_);
                    }
                    onChanged();
                }
            } else if (!stats.adUnit_.isEmpty()) {
                if (!this.adUnitBuilder_.isEmpty()) {
                    this.adUnitBuilder_.addAllMessages(stats.adUnit_);
                } else {
                    this.adUnitBuilder_.dispose();
                    this.adUnitBuilder_ = null;
                    this.adUnit_ = stats.adUnit_;
                    this.bitField0_ &= -2;
                    this.adUnitBuilder_ = Stats.alwaysUseFieldBuilders ? getAdUnitFieldBuilder() : null;
                }
            }
            if (this.adapterBuilder_ == null) {
                if (!stats.adapter_.isEmpty()) {
                    if (this.adapter_.isEmpty()) {
                        this.adapter_ = stats.adapter_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureAdapterIsMutable();
                        this.adapter_.addAll(stats.adapter_);
                    }
                    onChanged();
                }
            } else if (!stats.adapter_.isEmpty()) {
                if (!this.adapterBuilder_.isEmpty()) {
                    this.adapterBuilder_.addAllMessages(stats.adapter_);
                } else {
                    this.adapterBuilder_.dispose();
                    this.adapterBuilder_ = null;
                    this.adapter_ = stats.adapter_;
                    this.bitField0_ &= -3;
                    this.adapterBuilder_ = Stats.alwaysUseFieldBuilders ? getAdapterFieldBuilder() : null;
                }
            }
            mergeUnknownFields(stats.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Stats.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Stats.access$2800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Stats r3 = (com.appodeal.ads.api.Stats) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Stats r4 = (com.appodeal.ads.api.Stats) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Stats.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Stats$Builder");
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public int getCapacity() {
            return this.capacity_;
        }

        public Builder setCapacity(int i) {
            this.capacity_ = i;
            onChanged();
            return this;
        }

        public Builder clearCapacity() {
            this.capacity_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public long getStart() {
            return this.start_;
        }

        public Builder setStart(long j) {
            this.start_ = j;
            onChanged();
            return this;
        }

        public Builder clearStart() {
            this.start_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public long getFinish() {
            return this.finish_;
        }

        public Builder setFinish(long j) {
            this.finish_ = j;
            onChanged();
            return this;
        }

        public Builder clearFinish() {
            this.finish_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public boolean getSuccessful() {
            return this.successful_;
        }

        public Builder setSuccessful(boolean z) {
            this.successful_ = z;
            onChanged();
            return this;
        }

        public Builder clearSuccessful() {
            this.successful_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public boolean getCompleted() {
            return this.completed_;
        }

        public Builder setCompleted(boolean z) {
            this.completed_ = z;
            onChanged();
            return this;
        }

        public Builder clearCompleted() {
            this.completed_ = false;
            onChanged();
            return this;
        }

        private void ensureAdUnitIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.adUnit_ = new ArrayList(this.adUnit_);
                this.bitField0_ |= 1;
            }
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public List<AdUnit> getAdUnitList() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.adUnit_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public int getAdUnitCount() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adUnit_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public AdUnit getAdUnit(int i) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adUnit_.get(i);
            }
            return repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setAdUnit(int i, AdUnit adUnit) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adUnit.getClass();
                ensureAdUnitIsMutable();
                this.adUnit_.set(i, adUnit);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, adUnit);
            }
            return this;
        }

        public Builder setAdUnit(int i, AdUnit.Builder builder) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitIsMutable();
                this.adUnit_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public Builder addAdUnit(AdUnit adUnit) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adUnit.getClass();
                ensureAdUnitIsMutable();
                this.adUnit_.add(adUnit);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(adUnit);
            }
            return this;
        }

        public Builder addAdUnit(int i, AdUnit adUnit) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adUnit.getClass();
                ensureAdUnitIsMutable();
                this.adUnit_.add(i, adUnit);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, adUnit);
            }
            return this;
        }

        public Builder addAdUnit(AdUnit.Builder builder) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitIsMutable();
                this.adUnit_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public Builder addAdUnit(int i, AdUnit.Builder builder) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitIsMutable();
                this.adUnit_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public Builder addAllAdUnit(Iterable<? extends AdUnit> iterable) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.adUnit_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public Builder clearAdUnit() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.adUnit_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder removeAdUnit(int i) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitIsMutable();
                this.adUnit_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public AdUnit.Builder getAdUnitBuilder(int i) {
            return getAdUnitFieldBuilder().getBuilder(i);
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public AdUnitOrBuilder getAdUnitOrBuilder(int i) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adUnit_.get(i);
            }
            return repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public List<? extends AdUnitOrBuilder> getAdUnitOrBuilderList() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.adUnit_);
        }

        public AdUnit.Builder addAdUnitBuilder() {
            return getAdUnitFieldBuilder().addBuilder(AdUnit.getDefaultInstance());
        }

        public AdUnit.Builder addAdUnitBuilder(int i) {
            return getAdUnitFieldBuilder().addBuilder(i, AdUnit.getDefaultInstance());
        }

        public List<AdUnit.Builder> getAdUnitBuilderList() {
            return getAdUnitFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> getAdUnitFieldBuilder() {
            if (this.adUnitBuilder_ == null) {
                this.adUnitBuilder_ = new RepeatedFieldBuilderV3<>(this.adUnit_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                this.adUnit_ = null;
            }
            return this.adUnitBuilder_;
        }

        private void ensureAdapterIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.adapter_ = new ArrayList(this.adapter_);
                this.bitField0_ |= 2;
            }
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public List<Adapter> getAdapterList() {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return Collections.unmodifiableList(this.adapter_);
            }
            return repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public int getAdapterCount() {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adapter_.size();
            }
            return repeatedFieldBuilderV3.getCount();
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public Adapter getAdapter(int i) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adapter_.get(i);
            }
            return repeatedFieldBuilderV3.getMessage(i);
        }

        public Builder setAdapter(int i, Adapter adapter) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adapter.getClass();
                ensureAdapterIsMutable();
                this.adapter_.set(i, adapter);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, adapter);
            }
            return this;
        }

        public Builder setAdapter(int i, Adapter.Builder builder) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdapterIsMutable();
                this.adapter_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public Builder addAdapter(Adapter adapter) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adapter.getClass();
                ensureAdapterIsMutable();
                this.adapter_.add(adapter);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(adapter);
            }
            return this;
        }

        public Builder addAdapter(int i, Adapter adapter) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                adapter.getClass();
                ensureAdapterIsMutable();
                this.adapter_.add(i, adapter);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, adapter);
            }
            return this;
        }

        public Builder addAdapter(Adapter.Builder builder) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdapterIsMutable();
                this.adapter_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public Builder addAdapter(int i, Adapter.Builder builder) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdapterIsMutable();
                this.adapter_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public Builder addAllAdapter(Iterable<? extends Adapter> iterable) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdapterIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.adapter_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public Builder clearAdapter() {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.adapter_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public Builder removeAdapter(int i) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdapterIsMutable();
                this.adapter_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public Adapter.Builder getAdapterBuilder(int i) {
            return getAdapterFieldBuilder().getBuilder(i);
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public AdapterOrBuilder getAdapterOrBuilder(int i) {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                return this.adapter_.get(i);
            }
            return repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.appodeal.ads.api.StatsOrBuilder
        public List<? extends AdapterOrBuilder> getAdapterOrBuilderList() {
            RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> repeatedFieldBuilderV3 = this.adapterBuilder_;
            if (repeatedFieldBuilderV3 != null) {
                return repeatedFieldBuilderV3.getMessageOrBuilderList();
            }
            return Collections.unmodifiableList(this.adapter_);
        }

        public Adapter.Builder addAdapterBuilder() {
            return getAdapterFieldBuilder().addBuilder(Adapter.getDefaultInstance());
        }

        public Adapter.Builder addAdapterBuilder(int i) {
            return getAdapterFieldBuilder().addBuilder(i, Adapter.getDefaultInstance());
        }

        public List<Adapter.Builder> getAdapterBuilderList() {
            return getAdapterFieldBuilder().getBuilderList();
        }

        private RepeatedFieldBuilderV3<Adapter, Adapter.Builder, AdapterOrBuilder> getAdapterFieldBuilder() {
            if (this.adapterBuilder_ == null) {
                this.adapterBuilder_ = new RepeatedFieldBuilderV3<>(this.adapter_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.adapter_ = null;
            }
            return this.adapterBuilder_;
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

    public static Stats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Stats> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Stats> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Stats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
