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
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class Device extends GeneratedMessageV3 implements DeviceOrBuilder {
    public static final int ADIDG_FIELD_NUMBER = 18;
    public static final int BATTERY_FIELD_NUMBER = 12;
    public static final int CONNECTIONTYPE_FIELD_NUMBER = 15;
    public static final int CPU_USAGE_FIELD_NUMBER = 27;
    public static final int DEVICETYPE_FIELD_NUMBER = 7;
    public static final int H_FIELD_NUMBER = 5;
    public static final int IDFV_FIELD_NUMBER = 20;
    public static final int IFA_FIELD_NUMBER = 16;
    public static final int LMT_FIELD_NUMBER = 17;
    public static final int LOCALE_FIELD_NUMBER = 14;
    public static final int MAKE_FIELD_NUMBER = 8;
    public static final int MCCMNC_FIELD_NUMBER = 13;
    public static final int MODEL_FIELD_NUMBER = 9;
    public static final int OSV_FIELD_NUMBER = 2;
    public static final int OS_FIELD_NUMBER = 3;
    public static final int PXRATIO_FIELD_NUMBER = 6;
    public static final int RAM_FREE_FIELD_NUMBER = 25;
    public static final int RAM_SIZE_FIELD_NUMBER = 24;
    public static final int RAM_USED_FIELD_NUMBER = 26;
    public static final int ROOTED_FIELD_NUMBER = 10;
    public static final int SECURE_ANDROID_ID_FIELD_NUMBER = 28;
    public static final int STORAGE_FREE_FIELD_NUMBER = 22;
    public static final int STORAGE_SIZE_FIELD_NUMBER = 21;
    public static final int STORAGE_USED_FIELD_NUMBER = 23;
    public static final int TRACKING_STATUS_FIELD_NUMBER = 19;
    public static final int UA_FIELD_NUMBER = 1;
    public static final int WEBVIEW_VERSION_FIELD_NUMBER = 11;
    public static final int W_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private boolean adidg_;
    private int battery_;
    private int connectiontype_;
    private float cpuUsage_;
    private int devicetype_;
    private int h_;
    private volatile Object idfv_;
    private volatile Object ifa_;
    private int lmt_;
    private volatile Object locale_;
    private volatile Object make_;
    private volatile Object mccmnc_;
    private byte memoizedIsInitialized;
    private volatile Object model_;
    private volatile Object os_;
    private volatile Object osv_;
    private float pxratio_;
    private long ramFree_;
    private long ramSize_;
    private long ramUsed_;
    private boolean rooted_;
    private volatile Object secureAndroidId_;
    private long storageFree_;
    private long storageSize_;
    private long storageUsed_;
    private int trackingStatus_;
    private volatile Object ua_;
    private int w_;
    private volatile Object webviewVersion_;
    private static final Device DEFAULT_INSTANCE = new Device();
    private static final Parser<Device> PARSER = new AbstractParser<Device>() { // from class: com.appodeal.ads.api.Device.1
        @Override // com.explorestack.protobuf.Parser
        public Device parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Device(codedInputStream, extensionRegistryLite);
        }
    };

    private Device(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Device() {
        this.memoizedIsInitialized = (byte) -1;
        this.ua_ = "";
        this.osv_ = "";
        this.os_ = "";
        this.devicetype_ = 0;
        this.make_ = "";
        this.model_ = "";
        this.webviewVersion_ = "";
        this.mccmnc_ = "";
        this.locale_ = "";
        this.connectiontype_ = 0;
        this.ifa_ = "";
        this.trackingStatus_ = 0;
        this.idfv_ = "";
        this.secureAndroidId_ = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Device();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Device(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        extensionRegistryLite.getClass();
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 10:
                                this.ua_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 18:
                                this.osv_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 26:
                                this.os_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 32:
                                this.w_ = codedInputStream.readInt32();
                                continue;
                            case 40:
                                this.h_ = codedInputStream.readInt32();
                                continue;
                            case 53:
                                this.pxratio_ = codedInputStream.readFloat();
                                continue;
                            case 56:
                                this.devicetype_ = codedInputStream.readEnum();
                                continue;
                            case 66:
                                this.make_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 74:
                                this.model_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 80:
                                this.rooted_ = codedInputStream.readBool();
                                continue;
                            case 90:
                                this.webviewVersion_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 96:
                                this.battery_ = codedInputStream.readInt32();
                                continue;
                            case 106:
                                this.mccmnc_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 114:
                                this.locale_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 120:
                                this.connectiontype_ = codedInputStream.readEnum();
                                continue;
                            case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                                this.ifa_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 136:
                                this.lmt_ = codedInputStream.readInt32();
                                continue;
                            case 144:
                                this.adidg_ = codedInputStream.readBool();
                                continue;
                            case 152:
                                this.trackingStatus_ = codedInputStream.readEnum();
                                continue;
                            case 162:
                                this.idfv_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 168:
                                this.storageSize_ = codedInputStream.readUInt64();
                                continue;
                            case 176:
                                this.storageFree_ = codedInputStream.readUInt64();
                                continue;
                            case 184:
                                this.storageUsed_ = codedInputStream.readUInt64();
                                continue;
                            case 192:
                                this.ramSize_ = codedInputStream.readUInt64();
                                continue;
                            case 200:
                                this.ramFree_ = codedInputStream.readUInt64();
                                continue;
                            case LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:
                                this.ramUsed_ = codedInputStream.readUInt64();
                                continue;
                            case 221:
                                this.cpuUsage_ = codedInputStream.readFloat();
                                continue;
                            case 226:
                                this.secureAndroidId_ = codedInputStream.readStringRequireUtf8();
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
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return Api.internal_static_com_appodeal_ads_Device_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Device_fieldAccessorTable.ensureFieldAccessorsInitialized(Device.class, Builder.class);
    }

    /* loaded from: classes2.dex */
    public enum ConnectionType implements ProtocolMessageEnum {
        CONNECTIONTYPE_UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE_UNKNOWN(3),
        MOBILE_2G(4),
        MOBILE_3G(5),
        MOBILE_4G(6),
        UNRECOGNIZED(-1);
        
        public static final int CONNECTIONTYPE_UNKNOWN_VALUE = 0;
        public static final int ETHERNET_VALUE = 1;
        public static final int MOBILE_2G_VALUE = 4;
        public static final int MOBILE_3G_VALUE = 5;
        public static final int MOBILE_4G_VALUE = 6;
        public static final int MOBILE_UNKNOWN_VALUE = 3;
        public static final int WIFI_VALUE = 2;
        private final int value;
        private static final Internal.EnumLiteMap<ConnectionType> internalValueMap = new Internal.EnumLiteMap<ConnectionType>() { // from class: com.appodeal.ads.api.Device.ConnectionType.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public ConnectionType findValueByNumber(int i) {
                return ConnectionType.forNumber(i);
            }
        };
        private static final ConnectionType[] VALUES = values();

        @Override // com.explorestack.protobuf.ProtocolMessageEnum, com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static ConnectionType valueOf(int i) {
            return forNumber(i);
        }

        public static ConnectionType forNumber(int i) {
            switch (i) {
                case 0:
                    return CONNECTIONTYPE_UNKNOWN;
                case 1:
                    return ETHERNET;
                case 2:
                    return WIFI;
                case 3:
                    return MOBILE_UNKNOWN;
                case 4:
                    return MOBILE_2G;
                case 5:
                    return MOBILE_3G;
                case 6:
                    return MOBILE_4G;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<ConnectionType> internalGetValueMap() {
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
            return Device.getDescriptor().getEnumTypes().get(0);
        }

        public static ConnectionType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        ConnectionType(int i) {
            this.value = i;
        }
    }

    /* loaded from: classes2.dex */
    public enum DeviceType implements ProtocolMessageEnum {
        DEVICETYPE_UNKNOWN(0),
        PHONE(4),
        TABLET(5),
        UNRECOGNIZED(-1);
        
        public static final int DEVICETYPE_UNKNOWN_VALUE = 0;
        public static final int PHONE_VALUE = 4;
        public static final int TABLET_VALUE = 5;
        private final int value;
        private static final Internal.EnumLiteMap<DeviceType> internalValueMap = new Internal.EnumLiteMap<DeviceType>() { // from class: com.appodeal.ads.api.Device.DeviceType.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public DeviceType findValueByNumber(int i) {
                return DeviceType.forNumber(i);
            }
        };
        private static final DeviceType[] VALUES = values();

        @Override // com.explorestack.protobuf.ProtocolMessageEnum, com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static DeviceType valueOf(int i) {
            return forNumber(i);
        }

        public static DeviceType forNumber(int i) {
            if (i != 0) {
                if (i != 4) {
                    if (i != 5) {
                        return null;
                    }
                    return TABLET;
                }
                return PHONE;
            }
            return DEVICETYPE_UNKNOWN;
        }

        public static Internal.EnumLiteMap<DeviceType> internalGetValueMap() {
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
            return Device.getDescriptor().getEnumTypes().get(1);
        }

        public static DeviceType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        DeviceType(int i) {
            this.value = i;
        }
    }

    /* loaded from: classes2.dex */
    public enum TrackingAuthorizationStatus implements ProtocolMessageEnum {
        NOT_DETERMINED(0),
        RESTRICTED(1),
        DENIED(2),
        AUTHORIZED(3),
        UNRECOGNIZED(-1);
        
        public static final int AUTHORIZED_VALUE = 3;
        public static final int DENIED_VALUE = 2;
        public static final int NOT_DETERMINED_VALUE = 0;
        public static final int RESTRICTED_VALUE = 1;
        private final int value;
        private static final Internal.EnumLiteMap<TrackingAuthorizationStatus> internalValueMap = new Internal.EnumLiteMap<TrackingAuthorizationStatus>() { // from class: com.appodeal.ads.api.Device.TrackingAuthorizationStatus.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.explorestack.protobuf.Internal.EnumLiteMap
            public TrackingAuthorizationStatus findValueByNumber(int i) {
                return TrackingAuthorizationStatus.forNumber(i);
            }
        };
        private static final TrackingAuthorizationStatus[] VALUES = values();

        @Override // com.explorestack.protobuf.ProtocolMessageEnum, com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static TrackingAuthorizationStatus valueOf(int i) {
            return forNumber(i);
        }

        public static TrackingAuthorizationStatus forNumber(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return AUTHORIZED;
                    }
                    return DENIED;
                }
                return RESTRICTED;
            }
            return NOT_DETERMINED;
        }

        public static Internal.EnumLiteMap<TrackingAuthorizationStatus> internalGetValueMap() {
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
            return Device.getDescriptor().getEnumTypes().get(2);
        }

        public static TrackingAuthorizationStatus valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() != getDescriptor()) {
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }

        TrackingAuthorizationStatus(int i) {
            this.value = i;
        }
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getUa() {
        Object obj = this.ua_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ua_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getUaBytes() {
        Object obj = this.ua_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ua_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getOsv() {
        Object obj = this.osv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.osv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getOsvBytes() {
        Object obj = this.osv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.osv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getOs() {
        Object obj = this.os_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.os_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getOsBytes() {
        Object obj = this.os_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.os_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public int getW() {
        return this.w_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public int getH() {
        return this.h_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public float getPxratio() {
        return this.pxratio_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public int getDevicetypeValue() {
        return this.devicetype_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public DeviceType getDevicetype() {
        DeviceType valueOf = DeviceType.valueOf(this.devicetype_);
        return valueOf == null ? DeviceType.UNRECOGNIZED : valueOf;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getMake() {
        Object obj = this.make_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.make_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getMakeBytes() {
        Object obj = this.make_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.make_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getModel() {
        Object obj = this.model_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.model_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getModelBytes() {
        Object obj = this.model_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.model_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    @Deprecated
    public boolean getRooted() {
        return this.rooted_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    @Deprecated
    public String getWebviewVersion() {
        Object obj = this.webviewVersion_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.webviewVersion_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    @Deprecated
    public ByteString getWebviewVersionBytes() {
        Object obj = this.webviewVersion_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.webviewVersion_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public int getBattery() {
        return this.battery_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getMccmnc() {
        Object obj = this.mccmnc_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.mccmnc_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getMccmncBytes() {
        Object obj = this.mccmnc_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.mccmnc_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getLocale() {
        Object obj = this.locale_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.locale_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getLocaleBytes() {
        Object obj = this.locale_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.locale_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public int getConnectiontypeValue() {
        return this.connectiontype_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ConnectionType getConnectiontype() {
        ConnectionType valueOf = ConnectionType.valueOf(this.connectiontype_);
        return valueOf == null ? ConnectionType.UNRECOGNIZED : valueOf;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getIfa() {
        Object obj = this.ifa_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifa_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getIfaBytes() {
        Object obj = this.ifa_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifa_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public int getLmt() {
        return this.lmt_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public boolean getAdidg() {
        return this.adidg_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public int getTrackingStatusValue() {
        return this.trackingStatus_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public TrackingAuthorizationStatus getTrackingStatus() {
        TrackingAuthorizationStatus valueOf = TrackingAuthorizationStatus.valueOf(this.trackingStatus_);
        return valueOf == null ? TrackingAuthorizationStatus.UNRECOGNIZED : valueOf;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getIdfv() {
        Object obj = this.idfv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.idfv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getIdfvBytes() {
        Object obj = this.idfv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.idfv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public long getStorageSize() {
        return this.storageSize_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public long getStorageFree() {
        return this.storageFree_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public long getStorageUsed() {
        return this.storageUsed_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public long getRamSize() {
        return this.ramSize_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public long getRamFree() {
        return this.ramFree_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public long getRamUsed() {
        return this.ramUsed_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public float getCpuUsage() {
        return this.cpuUsage_;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public String getSecureAndroidId() {
        Object obj = this.secureAndroidId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.secureAndroidId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.DeviceOrBuilder
    public ByteString getSecureAndroidIdBytes() {
        Object obj = this.secureAndroidId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.secureAndroidId_ = copyFromUtf8;
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
        if (!getUaBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.ua_);
        }
        if (!getOsvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.osv_);
        }
        if (!getOsBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.os_);
        }
        int i = this.w_;
        if (i != 0) {
            codedOutputStream.writeInt32(4, i);
        }
        int i2 = this.h_;
        if (i2 != 0) {
            codedOutputStream.writeInt32(5, i2);
        }
        float f2 = this.pxratio_;
        if (f2 != 0.0f) {
            codedOutputStream.writeFloat(6, f2);
        }
        if (this.devicetype_ != DeviceType.DEVICETYPE_UNKNOWN.getNumber()) {
            codedOutputStream.writeEnum(7, this.devicetype_);
        }
        if (!getMakeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.make_);
        }
        if (!getModelBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.model_);
        }
        boolean z = this.rooted_;
        if (z) {
            codedOutputStream.writeBool(10, z);
        }
        if (!getWebviewVersionBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.webviewVersion_);
        }
        int i3 = this.battery_;
        if (i3 != 0) {
            codedOutputStream.writeInt32(12, i3);
        }
        if (!getMccmncBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.mccmnc_);
        }
        if (!getLocaleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 14, this.locale_);
        }
        if (this.connectiontype_ != ConnectionType.CONNECTIONTYPE_UNKNOWN.getNumber()) {
            codedOutputStream.writeEnum(15, this.connectiontype_);
        }
        if (!getIfaBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 16, this.ifa_);
        }
        int i4 = this.lmt_;
        if (i4 != 0) {
            codedOutputStream.writeInt32(17, i4);
        }
        boolean z2 = this.adidg_;
        if (z2) {
            codedOutputStream.writeBool(18, z2);
        }
        if (this.trackingStatus_ != TrackingAuthorizationStatus.NOT_DETERMINED.getNumber()) {
            codedOutputStream.writeEnum(19, this.trackingStatus_);
        }
        if (!getIdfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 20, this.idfv_);
        }
        long j = this.storageSize_;
        if (j != 0) {
            codedOutputStream.writeUInt64(21, j);
        }
        long j2 = this.storageFree_;
        if (j2 != 0) {
            codedOutputStream.writeUInt64(22, j2);
        }
        long j3 = this.storageUsed_;
        if (j3 != 0) {
            codedOutputStream.writeUInt64(23, j3);
        }
        long j4 = this.ramSize_;
        if (j4 != 0) {
            codedOutputStream.writeUInt64(24, j4);
        }
        long j5 = this.ramFree_;
        if (j5 != 0) {
            codedOutputStream.writeUInt64(25, j5);
        }
        long j6 = this.ramUsed_;
        if (j6 != 0) {
            codedOutputStream.writeUInt64(26, j6);
        }
        float f3 = this.cpuUsage_;
        if (f3 != 0.0f) {
            codedOutputStream.writeFloat(27, f3);
        }
        if (!getSecureAndroidIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 28, this.secureAndroidId_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getUaBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.ua_) : 0;
        if (!getOsvBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.osv_);
        }
        if (!getOsBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.os_);
        }
        int i2 = this.w_;
        if (i2 != 0) {
            computeStringSize += CodedOutputStream.computeInt32Size(4, i2);
        }
        int i3 = this.h_;
        if (i3 != 0) {
            computeStringSize += CodedOutputStream.computeInt32Size(5, i3);
        }
        float f2 = this.pxratio_;
        if (f2 != 0.0f) {
            computeStringSize += CodedOutputStream.computeFloatSize(6, f2);
        }
        if (this.devicetype_ != DeviceType.DEVICETYPE_UNKNOWN.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(7, this.devicetype_);
        }
        if (!getMakeBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(8, this.make_);
        }
        if (!getModelBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(9, this.model_);
        }
        boolean z = this.rooted_;
        if (z) {
            computeStringSize += CodedOutputStream.computeBoolSize(10, z);
        }
        if (!getWebviewVersionBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(11, this.webviewVersion_);
        }
        int i4 = this.battery_;
        if (i4 != 0) {
            computeStringSize += CodedOutputStream.computeInt32Size(12, i4);
        }
        if (!getMccmncBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(13, this.mccmnc_);
        }
        if (!getLocaleBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(14, this.locale_);
        }
        if (this.connectiontype_ != ConnectionType.CONNECTIONTYPE_UNKNOWN.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(15, this.connectiontype_);
        }
        if (!getIfaBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(16, this.ifa_);
        }
        int i5 = this.lmt_;
        if (i5 != 0) {
            computeStringSize += CodedOutputStream.computeInt32Size(17, i5);
        }
        boolean z2 = this.adidg_;
        if (z2) {
            computeStringSize += CodedOutputStream.computeBoolSize(18, z2);
        }
        if (this.trackingStatus_ != TrackingAuthorizationStatus.NOT_DETERMINED.getNumber()) {
            computeStringSize += CodedOutputStream.computeEnumSize(19, this.trackingStatus_);
        }
        if (!getIdfvBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(20, this.idfv_);
        }
        long j = this.storageSize_;
        if (j != 0) {
            computeStringSize += CodedOutputStream.computeUInt64Size(21, j);
        }
        long j2 = this.storageFree_;
        if (j2 != 0) {
            computeStringSize += CodedOutputStream.computeUInt64Size(22, j2);
        }
        long j3 = this.storageUsed_;
        if (j3 != 0) {
            computeStringSize += CodedOutputStream.computeUInt64Size(23, j3);
        }
        long j4 = this.ramSize_;
        if (j4 != 0) {
            computeStringSize += CodedOutputStream.computeUInt64Size(24, j4);
        }
        long j5 = this.ramFree_;
        if (j5 != 0) {
            computeStringSize += CodedOutputStream.computeUInt64Size(25, j5);
        }
        long j6 = this.ramUsed_;
        if (j6 != 0) {
            computeStringSize += CodedOutputStream.computeUInt64Size(26, j6);
        }
        float f3 = this.cpuUsage_;
        if (f3 != 0.0f) {
            computeStringSize += CodedOutputStream.computeFloatSize(27, f3);
        }
        if (!getSecureAndroidIdBytes().isEmpty()) {
            computeStringSize += GeneratedMessageV3.computeStringSize(28, this.secureAndroidId_);
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
        if (!(obj instanceof Device)) {
            return super.equals(obj);
        }
        Device device = (Device) obj;
        return getUa().equals(device.getUa()) && getOsv().equals(device.getOsv()) && getOs().equals(device.getOs()) && getW() == device.getW() && getH() == device.getH() && Float.floatToIntBits(getPxratio()) == Float.floatToIntBits(device.getPxratio()) && this.devicetype_ == device.devicetype_ && getMake().equals(device.getMake()) && getModel().equals(device.getModel()) && getRooted() == device.getRooted() && getWebviewVersion().equals(device.getWebviewVersion()) && getBattery() == device.getBattery() && getMccmnc().equals(device.getMccmnc()) && getLocale().equals(device.getLocale()) && this.connectiontype_ == device.connectiontype_ && getIfa().equals(device.getIfa()) && getLmt() == device.getLmt() && getAdidg() == device.getAdidg() && this.trackingStatus_ == device.trackingStatus_ && getIdfv().equals(device.getIdfv()) && getStorageSize() == device.getStorageSize() && getStorageFree() == device.getStorageFree() && getStorageUsed() == device.getStorageUsed() && getRamSize() == device.getRamSize() && getRamFree() == device.getRamFree() && getRamUsed() == device.getRamUsed() && Float.floatToIntBits(getCpuUsage()) == Float.floatToIntBits(device.getCpuUsage()) && getSecureAndroidId().equals(device.getSecureAndroidId()) && this.unknownFields.equals(device.unknownFields);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUa().hashCode()) * 37) + 2) * 53) + getOsv().hashCode()) * 37) + 3) * 53) + getOs().hashCode()) * 37) + 4) * 53) + getW()) * 37) + 5) * 53) + getH()) * 37) + 6) * 53) + Float.floatToIntBits(getPxratio())) * 37) + 7) * 53) + this.devicetype_) * 37) + 8) * 53) + getMake().hashCode()) * 37) + 9) * 53) + getModel().hashCode()) * 37) + 10) * 53) + Internal.hashBoolean(getRooted())) * 37) + 11) * 53) + getWebviewVersion().hashCode()) * 37) + 12) * 53) + getBattery()) * 37) + 13) * 53) + getMccmnc().hashCode()) * 37) + 14) * 53) + getLocale().hashCode()) * 37) + 15) * 53) + this.connectiontype_) * 37) + 16) * 53) + getIfa().hashCode()) * 37) + 17) * 53) + getLmt()) * 37) + 18) * 53) + Internal.hashBoolean(getAdidg())) * 37) + 19) * 53) + this.trackingStatus_) * 37) + 20) * 53) + getIdfv().hashCode()) * 37) + 21) * 53) + Internal.hashLong(getStorageSize())) * 37) + 22) * 53) + Internal.hashLong(getStorageFree())) * 37) + 23) * 53) + Internal.hashLong(getStorageUsed())) * 37) + 24) * 53) + Internal.hashLong(getRamSize())) * 37) + 25) * 53) + Internal.hashLong(getRamFree())) * 37) + 26) * 53) + Internal.hashLong(getRamUsed())) * 37) + 27) * 53) + Float.floatToIntBits(getCpuUsage())) * 37) + 28) * 53) + getSecureAndroidId().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    public static Device parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Device parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Device parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Device parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Device parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Device parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Device parseFrom(InputStream inputStream) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Device parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Device parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Device parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Device parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Device parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Device) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Device device) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(device);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DeviceOrBuilder {
        private boolean adidg_;
        private int battery_;
        private int connectiontype_;
        private float cpuUsage_;
        private int devicetype_;
        private int h_;
        private Object idfv_;
        private Object ifa_;
        private int lmt_;
        private Object locale_;
        private Object make_;
        private Object mccmnc_;
        private Object model_;
        private Object os_;
        private Object osv_;
        private float pxratio_;
        private long ramFree_;
        private long ramSize_;
        private long ramUsed_;
        private boolean rooted_;
        private Object secureAndroidId_;
        private long storageFree_;
        private long storageSize_;
        private long storageUsed_;
        private int trackingStatus_;
        private Object ua_;
        private int w_;
        private Object webviewVersion_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Device_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Device_fieldAccessorTable.ensureFieldAccessorsInitialized(Device.class, Builder.class);
        }

        private Builder() {
            this.ua_ = "";
            this.osv_ = "";
            this.os_ = "";
            this.devicetype_ = 0;
            this.make_ = "";
            this.model_ = "";
            this.webviewVersion_ = "";
            this.mccmnc_ = "";
            this.locale_ = "";
            this.connectiontype_ = 0;
            this.ifa_ = "";
            this.trackingStatus_ = 0;
            this.idfv_ = "";
            this.secureAndroidId_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.ua_ = "";
            this.osv_ = "";
            this.os_ = "";
            this.devicetype_ = 0;
            this.make_ = "";
            this.model_ = "";
            this.webviewVersion_ = "";
            this.mccmnc_ = "";
            this.locale_ = "";
            this.connectiontype_ = 0;
            this.ifa_ = "";
            this.trackingStatus_ = 0;
            this.idfv_ = "";
            this.secureAndroidId_ = "";
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Device.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.ua_ = "";
            this.osv_ = "";
            this.os_ = "";
            this.w_ = 0;
            this.h_ = 0;
            this.pxratio_ = 0.0f;
            this.devicetype_ = 0;
            this.make_ = "";
            this.model_ = "";
            this.rooted_ = false;
            this.webviewVersion_ = "";
            this.battery_ = 0;
            this.mccmnc_ = "";
            this.locale_ = "";
            this.connectiontype_ = 0;
            this.ifa_ = "";
            this.lmt_ = 0;
            this.adidg_ = false;
            this.trackingStatus_ = 0;
            this.idfv_ = "";
            this.storageSize_ = 0L;
            this.storageFree_ = 0L;
            this.storageUsed_ = 0L;
            this.ramSize_ = 0L;
            this.ramFree_ = 0L;
            this.ramUsed_ = 0L;
            this.cpuUsage_ = 0.0f;
            this.secureAndroidId_ = "";
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Device_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Device getDefaultInstanceForType() {
            return Device.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Device build() {
            Device buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Device buildPartial() {
            Device device = new Device(this);
            device.ua_ = this.ua_;
            device.osv_ = this.osv_;
            device.os_ = this.os_;
            device.w_ = this.w_;
            device.h_ = this.h_;
            device.pxratio_ = this.pxratio_;
            device.devicetype_ = this.devicetype_;
            device.make_ = this.make_;
            device.model_ = this.model_;
            device.rooted_ = this.rooted_;
            device.webviewVersion_ = this.webviewVersion_;
            device.battery_ = this.battery_;
            device.mccmnc_ = this.mccmnc_;
            device.locale_ = this.locale_;
            device.connectiontype_ = this.connectiontype_;
            device.ifa_ = this.ifa_;
            device.lmt_ = this.lmt_;
            device.adidg_ = this.adidg_;
            device.trackingStatus_ = this.trackingStatus_;
            device.idfv_ = this.idfv_;
            device.storageSize_ = this.storageSize_;
            device.storageFree_ = this.storageFree_;
            device.storageUsed_ = this.storageUsed_;
            device.ramSize_ = this.ramSize_;
            device.ramFree_ = this.ramFree_;
            device.ramUsed_ = this.ramUsed_;
            device.cpuUsage_ = this.cpuUsage_;
            device.secureAndroidId_ = this.secureAndroidId_;
            onBuilt();
            return device;
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
            if (message instanceof Device) {
                return mergeFrom((Device) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Device device) {
            if (device == Device.getDefaultInstance()) {
                return this;
            }
            if (!device.getUa().isEmpty()) {
                this.ua_ = device.ua_;
                onChanged();
            }
            if (!device.getOsv().isEmpty()) {
                this.osv_ = device.osv_;
                onChanged();
            }
            if (!device.getOs().isEmpty()) {
                this.os_ = device.os_;
                onChanged();
            }
            if (device.getW() != 0) {
                setW(device.getW());
            }
            if (device.getH() != 0) {
                setH(device.getH());
            }
            if (device.getPxratio() != 0.0f) {
                setPxratio(device.getPxratio());
            }
            if (device.devicetype_ != 0) {
                setDevicetypeValue(device.getDevicetypeValue());
            }
            if (!device.getMake().isEmpty()) {
                this.make_ = device.make_;
                onChanged();
            }
            if (!device.getModel().isEmpty()) {
                this.model_ = device.model_;
                onChanged();
            }
            if (device.getRooted()) {
                setRooted(device.getRooted());
            }
            if (!device.getWebviewVersion().isEmpty()) {
                this.webviewVersion_ = device.webviewVersion_;
                onChanged();
            }
            if (device.getBattery() != 0) {
                setBattery(device.getBattery());
            }
            if (!device.getMccmnc().isEmpty()) {
                this.mccmnc_ = device.mccmnc_;
                onChanged();
            }
            if (!device.getLocale().isEmpty()) {
                this.locale_ = device.locale_;
                onChanged();
            }
            if (device.connectiontype_ != 0) {
                setConnectiontypeValue(device.getConnectiontypeValue());
            }
            if (!device.getIfa().isEmpty()) {
                this.ifa_ = device.ifa_;
                onChanged();
            }
            if (device.getLmt() != 0) {
                setLmt(device.getLmt());
            }
            if (device.getAdidg()) {
                setAdidg(device.getAdidg());
            }
            if (device.trackingStatus_ != 0) {
                setTrackingStatusValue(device.getTrackingStatusValue());
            }
            if (!device.getIdfv().isEmpty()) {
                this.idfv_ = device.idfv_;
                onChanged();
            }
            if (device.getStorageSize() != 0) {
                setStorageSize(device.getStorageSize());
            }
            if (device.getStorageFree() != 0) {
                setStorageFree(device.getStorageFree());
            }
            if (device.getStorageUsed() != 0) {
                setStorageUsed(device.getStorageUsed());
            }
            if (device.getRamSize() != 0) {
                setRamSize(device.getRamSize());
            }
            if (device.getRamFree() != 0) {
                setRamFree(device.getRamFree());
            }
            if (device.getRamUsed() != 0) {
                setRamUsed(device.getRamUsed());
            }
            if (device.getCpuUsage() != 0.0f) {
                setCpuUsage(device.getCpuUsage());
            }
            if (!device.getSecureAndroidId().isEmpty()) {
                this.secureAndroidId_ = device.secureAndroidId_;
                onChanged();
            }
            mergeUnknownFields(device.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Device.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Device.access$3300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Device r3 = (com.appodeal.ads.api.Device) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Device r4 = (com.appodeal.ads.api.Device) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Device.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Device$Builder");
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getUa() {
            Object obj = this.ua_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ua_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getUaBytes() {
            Object obj = this.ua_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ua_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setUa(String str) {
            str.getClass();
            this.ua_ = str;
            onChanged();
            return this;
        }

        public Builder clearUa() {
            this.ua_ = Device.getDefaultInstance().getUa();
            onChanged();
            return this;
        }

        public Builder setUaBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.ua_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getOsv() {
            Object obj = this.osv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.osv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getOsvBytes() {
            Object obj = this.osv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.osv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setOsv(String str) {
            str.getClass();
            this.osv_ = str;
            onChanged();
            return this;
        }

        public Builder clearOsv() {
            this.osv_ = Device.getDefaultInstance().getOsv();
            onChanged();
            return this;
        }

        public Builder setOsvBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.osv_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getOs() {
            Object obj = this.os_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.os_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getOsBytes() {
            Object obj = this.os_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.os_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setOs(String str) {
            str.getClass();
            this.os_ = str;
            onChanged();
            return this;
        }

        public Builder clearOs() {
            this.os_ = Device.getDefaultInstance().getOs();
            onChanged();
            return this;
        }

        public Builder setOsBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.os_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public int getW() {
            return this.w_;
        }

        public Builder setW(int i) {
            this.w_ = i;
            onChanged();
            return this;
        }

        public Builder clearW() {
            this.w_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public int getH() {
            return this.h_;
        }

        public Builder setH(int i) {
            this.h_ = i;
            onChanged();
            return this;
        }

        public Builder clearH() {
            this.h_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public float getPxratio() {
            return this.pxratio_;
        }

        public Builder setPxratio(float f2) {
            this.pxratio_ = f2;
            onChanged();
            return this;
        }

        public Builder clearPxratio() {
            this.pxratio_ = 0.0f;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public int getDevicetypeValue() {
            return this.devicetype_;
        }

        public Builder setDevicetypeValue(int i) {
            this.devicetype_ = i;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public DeviceType getDevicetype() {
            DeviceType valueOf = DeviceType.valueOf(this.devicetype_);
            return valueOf == null ? DeviceType.UNRECOGNIZED : valueOf;
        }

        public Builder setDevicetype(DeviceType deviceType) {
            deviceType.getClass();
            this.devicetype_ = deviceType.getNumber();
            onChanged();
            return this;
        }

        public Builder clearDevicetype() {
            this.devicetype_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getMake() {
            Object obj = this.make_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.make_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getMakeBytes() {
            Object obj = this.make_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.make_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setMake(String str) {
            str.getClass();
            this.make_ = str;
            onChanged();
            return this;
        }

        public Builder clearMake() {
            this.make_ = Device.getDefaultInstance().getMake();
            onChanged();
            return this;
        }

        public Builder setMakeBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.make_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getModel() {
            Object obj = this.model_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.model_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getModelBytes() {
            Object obj = this.model_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.model_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setModel(String str) {
            str.getClass();
            this.model_ = str;
            onChanged();
            return this;
        }

        public Builder clearModel() {
            this.model_ = Device.getDefaultInstance().getModel();
            onChanged();
            return this;
        }

        public Builder setModelBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.model_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        @Deprecated
        public boolean getRooted() {
            return this.rooted_;
        }

        @Deprecated
        public Builder setRooted(boolean z) {
            this.rooted_ = z;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearRooted() {
            this.rooted_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        @Deprecated
        public String getWebviewVersion() {
            Object obj = this.webviewVersion_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.webviewVersion_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        @Deprecated
        public ByteString getWebviewVersionBytes() {
            Object obj = this.webviewVersion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.webviewVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Deprecated
        public Builder setWebviewVersion(String str) {
            str.getClass();
            this.webviewVersion_ = str;
            onChanged();
            return this;
        }

        @Deprecated
        public Builder clearWebviewVersion() {
            this.webviewVersion_ = Device.getDefaultInstance().getWebviewVersion();
            onChanged();
            return this;
        }

        @Deprecated
        public Builder setWebviewVersionBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.webviewVersion_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public int getBattery() {
            return this.battery_;
        }

        public Builder setBattery(int i) {
            this.battery_ = i;
            onChanged();
            return this;
        }

        public Builder clearBattery() {
            this.battery_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getMccmnc() {
            Object obj = this.mccmnc_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.mccmnc_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getMccmncBytes() {
            Object obj = this.mccmnc_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mccmnc_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setMccmnc(String str) {
            str.getClass();
            this.mccmnc_ = str;
            onChanged();
            return this;
        }

        public Builder clearMccmnc() {
            this.mccmnc_ = Device.getDefaultInstance().getMccmnc();
            onChanged();
            return this;
        }

        public Builder setMccmncBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.mccmnc_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getLocale() {
            Object obj = this.locale_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.locale_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getLocaleBytes() {
            Object obj = this.locale_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.locale_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setLocale(String str) {
            str.getClass();
            this.locale_ = str;
            onChanged();
            return this;
        }

        public Builder clearLocale() {
            this.locale_ = Device.getDefaultInstance().getLocale();
            onChanged();
            return this;
        }

        public Builder setLocaleBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.locale_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public int getConnectiontypeValue() {
            return this.connectiontype_;
        }

        public Builder setConnectiontypeValue(int i) {
            this.connectiontype_ = i;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ConnectionType getConnectiontype() {
            ConnectionType valueOf = ConnectionType.valueOf(this.connectiontype_);
            return valueOf == null ? ConnectionType.UNRECOGNIZED : valueOf;
        }

        public Builder setConnectiontype(ConnectionType connectionType) {
            connectionType.getClass();
            this.connectiontype_ = connectionType.getNumber();
            onChanged();
            return this;
        }

        public Builder clearConnectiontype() {
            this.connectiontype_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getIfa() {
            Object obj = this.ifa_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ifa_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getIfaBytes() {
            Object obj = this.ifa_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifa_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setIfa(String str) {
            str.getClass();
            this.ifa_ = str;
            onChanged();
            return this;
        }

        public Builder clearIfa() {
            this.ifa_ = Device.getDefaultInstance().getIfa();
            onChanged();
            return this;
        }

        public Builder setIfaBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.ifa_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public int getLmt() {
            return this.lmt_;
        }

        public Builder setLmt(int i) {
            this.lmt_ = i;
            onChanged();
            return this;
        }

        public Builder clearLmt() {
            this.lmt_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public boolean getAdidg() {
            return this.adidg_;
        }

        public Builder setAdidg(boolean z) {
            this.adidg_ = z;
            onChanged();
            return this;
        }

        public Builder clearAdidg() {
            this.adidg_ = false;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public int getTrackingStatusValue() {
            return this.trackingStatus_;
        }

        public Builder setTrackingStatusValue(int i) {
            this.trackingStatus_ = i;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public TrackingAuthorizationStatus getTrackingStatus() {
            TrackingAuthorizationStatus valueOf = TrackingAuthorizationStatus.valueOf(this.trackingStatus_);
            return valueOf == null ? TrackingAuthorizationStatus.UNRECOGNIZED : valueOf;
        }

        public Builder setTrackingStatus(TrackingAuthorizationStatus trackingAuthorizationStatus) {
            trackingAuthorizationStatus.getClass();
            this.trackingStatus_ = trackingAuthorizationStatus.getNumber();
            onChanged();
            return this;
        }

        public Builder clearTrackingStatus() {
            this.trackingStatus_ = 0;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getIdfv() {
            Object obj = this.idfv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.idfv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getIdfvBytes() {
            Object obj = this.idfv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.idfv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setIdfv(String str) {
            str.getClass();
            this.idfv_ = str;
            onChanged();
            return this;
        }

        public Builder clearIdfv() {
            this.idfv_ = Device.getDefaultInstance().getIdfv();
            onChanged();
            return this;
        }

        public Builder setIdfvBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.idfv_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public long getStorageSize() {
            return this.storageSize_;
        }

        public Builder setStorageSize(long j) {
            this.storageSize_ = j;
            onChanged();
            return this;
        }

        public Builder clearStorageSize() {
            this.storageSize_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public long getStorageFree() {
            return this.storageFree_;
        }

        public Builder setStorageFree(long j) {
            this.storageFree_ = j;
            onChanged();
            return this;
        }

        public Builder clearStorageFree() {
            this.storageFree_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public long getStorageUsed() {
            return this.storageUsed_;
        }

        public Builder setStorageUsed(long j) {
            this.storageUsed_ = j;
            onChanged();
            return this;
        }

        public Builder clearStorageUsed() {
            this.storageUsed_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public long getRamSize() {
            return this.ramSize_;
        }

        public Builder setRamSize(long j) {
            this.ramSize_ = j;
            onChanged();
            return this;
        }

        public Builder clearRamSize() {
            this.ramSize_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public long getRamFree() {
            return this.ramFree_;
        }

        public Builder setRamFree(long j) {
            this.ramFree_ = j;
            onChanged();
            return this;
        }

        public Builder clearRamFree() {
            this.ramFree_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public long getRamUsed() {
            return this.ramUsed_;
        }

        public Builder setRamUsed(long j) {
            this.ramUsed_ = j;
            onChanged();
            return this;
        }

        public Builder clearRamUsed() {
            this.ramUsed_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public float getCpuUsage() {
            return this.cpuUsage_;
        }

        public Builder setCpuUsage(float f2) {
            this.cpuUsage_ = f2;
            onChanged();
            return this;
        }

        public Builder clearCpuUsage() {
            this.cpuUsage_ = 0.0f;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public String getSecureAndroidId() {
            Object obj = this.secureAndroidId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.secureAndroidId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.DeviceOrBuilder
        public ByteString getSecureAndroidIdBytes() {
            Object obj = this.secureAndroidId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.secureAndroidId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setSecureAndroidId(String str) {
            str.getClass();
            this.secureAndroidId_ = str;
            onChanged();
            return this;
        }

        public Builder clearSecureAndroidId() {
            this.secureAndroidId_ = Device.getDefaultInstance().getSecureAndroidId();
            onChanged();
            return this;
        }

        public Builder setSecureAndroidIdBytes(ByteString byteString) {
            byteString.getClass();
            Device.checkByteStringIsUtf8(byteString);
            this.secureAndroidId_ = byteString;
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

    public static Device getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Device> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Device> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Device getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
