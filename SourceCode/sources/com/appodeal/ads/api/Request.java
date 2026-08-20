package com.appodeal.ads.api;

import com.appodeal.ads.api.App;
import com.appodeal.ads.api.Device;
import com.appodeal.ads.api.Event;
import com.appodeal.ads.api.Extra;
import com.appodeal.ads.api.Geo;
import com.appodeal.ads.api.Get;
import com.appodeal.ads.api.Regs;
import com.appodeal.ads.api.Services;
import com.appodeal.ads.api.Session;
import com.appodeal.ads.api.Stats;
import com.appodeal.ads.api.User;
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
public final class Request extends GeneratedMessageV3 implements RequestOrBuilder {
    public static final int APP_FIELD_NUMBER = 1;
    public static final int CUSTOM_STATE_FIELD_NUMBER = 14;
    public static final int DEVICE_FIELD_NUMBER = 3;
    public static final int EVENT_FIELD_NUMBER = 12;
    public static final int EXT_FIELD_NUMBER = 7;
    public static final int GEO_FIELD_NUMBER = 6;
    public static final int GET_FIELD_NUMBER = 10;
    public static final int IMPID_FIELD_NUMBER = 8;
    public static final int MAIN_ID_FIELD_NUMBER = 9;
    public static final int REGS_FIELD_NUMBER = 5;
    public static final int SERVICES_DATA_FIELD_NUMBER = 15;
    public static final int SESSION_FIELD_NUMBER = 2;
    public static final int STATS_FIELD_NUMBER = 11;
    public static final int TIMESTAMP_FIELD_NUMBER = 13;
    public static final int USER_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private App app_;
    private volatile Object customState_;
    private Device device_;
    private Event event_;
    private Extra ext_;
    private Geo geo_;
    private Get get_;
    private volatile Object impid_;
    private volatile Object mainId_;
    private byte memoizedIsInitialized;
    private Regs regs_;
    private Services servicesData_;
    private Session session_;
    private Stats stats_;
    private long timestamp_;
    private User user_;
    private static final Request DEFAULT_INSTANCE = new Request();
    private static final Parser<Request> PARSER = new AbstractParser<Request>() { // from class: com.appodeal.ads.api.Request.1
        @Override // com.explorestack.protobuf.Parser
        public Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Request(codedInputStream, extensionRegistryLite);
        }
    };

    private Request(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) -1;
    }

    private Request() {
        this.memoizedIsInitialized = (byte) -1;
        this.impid_ = "";
        this.mainId_ = "";
        this.customState_ = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Request();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    private Request(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                        case 10:
                            App app = this.app_;
                            App.Builder builder = app != null ? app.toBuilder() : null;
                            App app2 = (App) codedInputStream.readMessage(App.parser(), extensionRegistryLite);
                            this.app_ = app2;
                            if (builder != null) {
                                builder.mergeFrom(app2);
                                this.app_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 18:
                            Session session = this.session_;
                            Session.Builder builder2 = session != null ? session.toBuilder() : null;
                            Session session2 = (Session) codedInputStream.readMessage(Session.parser(), extensionRegistryLite);
                            this.session_ = session2;
                            if (builder2 != null) {
                                builder2.mergeFrom(session2);
                                this.session_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 26:
                            Device device = this.device_;
                            Device.Builder builder3 = device != null ? device.toBuilder() : null;
                            Device device2 = (Device) codedInputStream.readMessage(Device.parser(), extensionRegistryLite);
                            this.device_ = device2;
                            if (builder3 != null) {
                                builder3.mergeFrom(device2);
                                this.device_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
                        case 34:
                            User user = this.user_;
                            User.Builder builder4 = user != null ? user.toBuilder() : null;
                            User user2 = (User) codedInputStream.readMessage(User.parser(), extensionRegistryLite);
                            this.user_ = user2;
                            if (builder4 != null) {
                                builder4.mergeFrom(user2);
                                this.user_ = builder4.buildPartial();
                            } else {
                                continue;
                            }
                        case 42:
                            Regs regs = this.regs_;
                            Regs.Builder builder5 = regs != null ? regs.toBuilder() : null;
                            Regs regs2 = (Regs) codedInputStream.readMessage(Regs.parser(), extensionRegistryLite);
                            this.regs_ = regs2;
                            if (builder5 != null) {
                                builder5.mergeFrom(regs2);
                                this.regs_ = builder5.buildPartial();
                            } else {
                                continue;
                            }
                        case 50:
                            Geo geo = this.geo_;
                            Geo.Builder builder6 = geo != null ? geo.toBuilder() : null;
                            Geo geo2 = (Geo) codedInputStream.readMessage(Geo.parser(), extensionRegistryLite);
                            this.geo_ = geo2;
                            if (builder6 != null) {
                                builder6.mergeFrom(geo2);
                                this.geo_ = builder6.buildPartial();
                            } else {
                                continue;
                            }
                        case 58:
                            Extra extra = this.ext_;
                            Extra.Builder builder7 = extra != null ? extra.toBuilder() : null;
                            Extra extra2 = (Extra) codedInputStream.readMessage(Extra.parser(), extensionRegistryLite);
                            this.ext_ = extra2;
                            if (builder7 != null) {
                                builder7.mergeFrom(extra2);
                                this.ext_ = builder7.buildPartial();
                            } else {
                                continue;
                            }
                        case 66:
                            this.impid_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 74:
                            this.mainId_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 82:
                            Get get = this.get_;
                            Get.Builder builder8 = get != null ? get.toBuilder() : null;
                            Get get2 = (Get) codedInputStream.readMessage(Get.parser(), extensionRegistryLite);
                            this.get_ = get2;
                            if (builder8 != null) {
                                builder8.mergeFrom(get2);
                                this.get_ = builder8.buildPartial();
                            } else {
                                continue;
                            }
                        case 90:
                            Stats stats = this.stats_;
                            Stats.Builder builder9 = stats != null ? stats.toBuilder() : null;
                            Stats stats2 = (Stats) codedInputStream.readMessage(Stats.parser(), extensionRegistryLite);
                            this.stats_ = stats2;
                            if (builder9 != null) {
                                builder9.mergeFrom(stats2);
                                this.stats_ = builder9.buildPartial();
                            } else {
                                continue;
                            }
                        case 98:
                            Event event = this.event_;
                            Event.Builder builder10 = event != null ? event.toBuilder() : null;
                            Event event2 = (Event) codedInputStream.readMessage(Event.parser(), extensionRegistryLite);
                            this.event_ = event2;
                            if (builder10 != null) {
                                builder10.mergeFrom(event2);
                                this.event_ = builder10.buildPartial();
                            } else {
                                continue;
                            }
                        case 104:
                            this.timestamp_ = codedInputStream.readInt64();
                            continue;
                        case 114:
                            this.customState_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 122:
                            Services services = this.servicesData_;
                            Services.Builder builder11 = services != null ? services.toBuilder() : null;
                            Services services2 = (Services) codedInputStream.readMessage(Services.parser(), extensionRegistryLite);
                            this.servicesData_ = services2;
                            if (builder11 != null) {
                                builder11.mergeFrom(services2);
                                this.servicesData_ = builder11.buildPartial();
                            } else {
                                continue;
                            }
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
        return Api.internal_static_com_appodeal_ads_Request_descriptor;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return Api.internal_static_com_appodeal_ads_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasApp() {
        return this.app_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public App getApp() {
        App app = this.app_;
        return app == null ? App.getDefaultInstance() : app;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public AppOrBuilder getAppOrBuilder() {
        return getApp();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasSession() {
        return this.session_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Session getSession() {
        Session session = this.session_;
        return session == null ? Session.getDefaultInstance() : session;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public SessionOrBuilder getSessionOrBuilder() {
        return getSession();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasDevice() {
        return this.device_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Device getDevice() {
        Device device = this.device_;
        return device == null ? Device.getDefaultInstance() : device;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public DeviceOrBuilder getDeviceOrBuilder() {
        return getDevice();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasUser() {
        return this.user_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public User getUser() {
        User user = this.user_;
        return user == null ? User.getDefaultInstance() : user;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public UserOrBuilder getUserOrBuilder() {
        return getUser();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasRegs() {
        return this.regs_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Regs getRegs() {
        Regs regs = this.regs_;
        return regs == null ? Regs.getDefaultInstance() : regs;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public RegsOrBuilder getRegsOrBuilder() {
        return getRegs();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasGeo() {
        return this.geo_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Geo getGeo() {
        Geo geo = this.geo_;
        return geo == null ? Geo.getDefaultInstance() : geo;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public GeoOrBuilder getGeoOrBuilder() {
        return getGeo();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasExt() {
        return this.ext_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Extra getExt() {
        Extra extra = this.ext_;
        return extra == null ? Extra.getDefaultInstance() : extra;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public ExtraOrBuilder getExtOrBuilder() {
        return getExt();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public String getImpid() {
        Object obj = this.impid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.impid_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public ByteString getImpidBytes() {
        Object obj = this.impid_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.impid_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public String getMainId() {
        Object obj = this.mainId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.mainId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public ByteString getMainIdBytes() {
        Object obj = this.mainId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.mainId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasGet() {
        return this.get_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Get getGet() {
        Get get = this.get_;
        return get == null ? Get.getDefaultInstance() : get;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public GetOrBuilder getGetOrBuilder() {
        return getGet();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasStats() {
        return this.stats_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Stats getStats() {
        Stats stats = this.stats_;
        return stats == null ? Stats.getDefaultInstance() : stats;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public StatsOrBuilder getStatsOrBuilder() {
        return getStats();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasEvent() {
        return this.event_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Event getEvent() {
        Event event = this.event_;
        return event == null ? Event.getDefaultInstance() : event;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public EventOrBuilder getEventOrBuilder() {
        return getEvent();
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public long getTimestamp() {
        return this.timestamp_;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public String getCustomState() {
        Object obj = this.customState_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.customState_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public ByteString getCustomStateBytes() {
        Object obj = this.customState_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.customState_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public boolean hasServicesData() {
        return this.servicesData_ != null;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public Services getServicesData() {
        Services services = this.servicesData_;
        return services == null ? Services.getDefaultInstance() : services;
    }

    @Override // com.appodeal.ads.api.RequestOrBuilder
    public ServicesOrBuilder getServicesDataOrBuilder() {
        return getServicesData();
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
        if (this.app_ != null) {
            codedOutputStream.writeMessage(1, getApp());
        }
        if (this.session_ != null) {
            codedOutputStream.writeMessage(2, getSession());
        }
        if (this.device_ != null) {
            codedOutputStream.writeMessage(3, getDevice());
        }
        if (this.user_ != null) {
            codedOutputStream.writeMessage(4, getUser());
        }
        if (this.regs_ != null) {
            codedOutputStream.writeMessage(5, getRegs());
        }
        if (this.geo_ != null) {
            codedOutputStream.writeMessage(6, getGeo());
        }
        if (this.ext_ != null) {
            codedOutputStream.writeMessage(7, getExt());
        }
        if (!getImpidBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.impid_);
        }
        if (!getMainIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.mainId_);
        }
        if (this.get_ != null) {
            codedOutputStream.writeMessage(10, getGet());
        }
        if (this.stats_ != null) {
            codedOutputStream.writeMessage(11, getStats());
        }
        if (this.event_ != null) {
            codedOutputStream.writeMessage(12, getEvent());
        }
        long j = this.timestamp_;
        if (j != 0) {
            codedOutputStream.writeInt64(13, j);
        }
        if (!getCustomStateBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 14, this.customState_);
        }
        if (this.servicesData_ != null) {
            codedOutputStream.writeMessage(15, getServicesData());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeMessageSize = this.app_ != null ? CodedOutputStream.computeMessageSize(1, getApp()) : 0;
        if (this.session_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(2, getSession());
        }
        if (this.device_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(3, getDevice());
        }
        if (this.user_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(4, getUser());
        }
        if (this.regs_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(5, getRegs());
        }
        if (this.geo_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(6, getGeo());
        }
        if (this.ext_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(7, getExt());
        }
        if (!getImpidBytes().isEmpty()) {
            computeMessageSize += GeneratedMessageV3.computeStringSize(8, this.impid_);
        }
        if (!getMainIdBytes().isEmpty()) {
            computeMessageSize += GeneratedMessageV3.computeStringSize(9, this.mainId_);
        }
        if (this.get_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(10, getGet());
        }
        if (this.stats_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(11, getStats());
        }
        if (this.event_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(12, getEvent());
        }
        long j = this.timestamp_;
        if (j != 0) {
            computeMessageSize += CodedOutputStream.computeInt64Size(13, j);
        }
        if (!getCustomStateBytes().isEmpty()) {
            computeMessageSize += GeneratedMessageV3.computeStringSize(14, this.customState_);
        }
        if (this.servicesData_ != null) {
            computeMessageSize += CodedOutputStream.computeMessageSize(15, getServicesData());
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
        if (!(obj instanceof Request)) {
            return super.equals(obj);
        }
        Request request = (Request) obj;
        if (hasApp() != request.hasApp()) {
            return false;
        }
        if ((!hasApp() || getApp().equals(request.getApp())) && hasSession() == request.hasSession()) {
            if ((!hasSession() || getSession().equals(request.getSession())) && hasDevice() == request.hasDevice()) {
                if ((!hasDevice() || getDevice().equals(request.getDevice())) && hasUser() == request.hasUser()) {
                    if ((!hasUser() || getUser().equals(request.getUser())) && hasRegs() == request.hasRegs()) {
                        if ((!hasRegs() || getRegs().equals(request.getRegs())) && hasGeo() == request.hasGeo()) {
                            if ((!hasGeo() || getGeo().equals(request.getGeo())) && hasExt() == request.hasExt()) {
                                if ((!hasExt() || getExt().equals(request.getExt())) && getImpid().equals(request.getImpid()) && getMainId().equals(request.getMainId()) && hasGet() == request.hasGet()) {
                                    if ((!hasGet() || getGet().equals(request.getGet())) && hasStats() == request.hasStats()) {
                                        if ((!hasStats() || getStats().equals(request.getStats())) && hasEvent() == request.hasEvent()) {
                                            if ((!hasEvent() || getEvent().equals(request.getEvent())) && getTimestamp() == request.getTimestamp() && getCustomState().equals(request.getCustomState()) && hasServicesData() == request.hasServicesData()) {
                                                return (!hasServicesData() || getServicesData().equals(request.getServicesData())) && this.unknownFields.equals(request.unknownFields);
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
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
        if (hasApp()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getApp().hashCode();
        }
        if (hasSession()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getSession().hashCode();
        }
        if (hasDevice()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getDevice().hashCode();
        }
        if (hasUser()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getUser().hashCode();
        }
        if (hasRegs()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getRegs().hashCode();
        }
        if (hasGeo()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getGeo().hashCode();
        }
        if (hasExt()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getExt().hashCode();
        }
        int hashCode2 = (((((((hashCode * 37) + 8) * 53) + getImpid().hashCode()) * 37) + 9) * 53) + getMainId().hashCode();
        if (hasGet()) {
            hashCode2 = (((hashCode2 * 37) + 10) * 53) + getGet().hashCode();
        }
        if (hasStats()) {
            hashCode2 = (((hashCode2 * 37) + 11) * 53) + getStats().hashCode();
        }
        if (hasEvent()) {
            hashCode2 = (((hashCode2 * 37) + 12) * 53) + getEvent().hashCode();
        }
        int hashLong = (((((((hashCode2 * 37) + 13) * 53) + Internal.hashLong(getTimestamp())) * 37) + 14) * 53) + getCustomState().hashCode();
        if (hasServicesData()) {
            hashLong = (((hashLong * 37) + 15) * 53) + getServicesData().hashCode();
        }
        int hashCode3 = (hashLong * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Request parseFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Request request) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(request);
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
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RequestOrBuilder {
        private SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> appBuilder_;
        private App app_;
        private Object customState_;
        private SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> deviceBuilder_;
        private Device device_;
        private SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> eventBuilder_;
        private Event event_;
        private SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> extBuilder_;
        private Extra ext_;
        private SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> geoBuilder_;
        private Geo geo_;
        private SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> getBuilder_;
        private Get get_;
        private Object impid_;
        private Object mainId_;
        private SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> regsBuilder_;
        private Regs regs_;
        private SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> servicesDataBuilder_;
        private Services servicesData_;
        private SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> sessionBuilder_;
        private Session session_;
        private SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> statsBuilder_;
        private Stats stats_;
        private long timestamp_;
        private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> userBuilder_;
        private User user_;

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return Api.internal_static_com_appodeal_ads_Request_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        protected GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return Api.internal_static_com_appodeal_ads_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
        }

        private Builder() {
            this.impid_ = "";
            this.mainId_ = "";
            this.customState_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.impid_ = "";
            this.mainId_ = "";
            this.customState_ = "";
            maybeForceBuilderInitialization();
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Request.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            if (this.appBuilder_ == null) {
                this.app_ = null;
            } else {
                this.app_ = null;
                this.appBuilder_ = null;
            }
            if (this.sessionBuilder_ == null) {
                this.session_ = null;
            } else {
                this.session_ = null;
                this.sessionBuilder_ = null;
            }
            if (this.deviceBuilder_ == null) {
                this.device_ = null;
            } else {
                this.device_ = null;
                this.deviceBuilder_ = null;
            }
            if (this.userBuilder_ == null) {
                this.user_ = null;
            } else {
                this.user_ = null;
                this.userBuilder_ = null;
            }
            if (this.regsBuilder_ == null) {
                this.regs_ = null;
            } else {
                this.regs_ = null;
                this.regsBuilder_ = null;
            }
            if (this.geoBuilder_ == null) {
                this.geo_ = null;
            } else {
                this.geo_ = null;
                this.geoBuilder_ = null;
            }
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            this.impid_ = "";
            this.mainId_ = "";
            if (this.getBuilder_ == null) {
                this.get_ = null;
            } else {
                this.get_ = null;
                this.getBuilder_ = null;
            }
            if (this.statsBuilder_ == null) {
                this.stats_ = null;
            } else {
                this.stats_ = null;
                this.statsBuilder_ = null;
            }
            if (this.eventBuilder_ == null) {
                this.event_ = null;
            } else {
                this.event_ = null;
                this.eventBuilder_ = null;
            }
            this.timestamp_ = 0L;
            this.customState_ = "";
            if (this.servicesDataBuilder_ == null) {
                this.servicesData_ = null;
            } else {
                this.servicesData_ = null;
                this.servicesDataBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return Api.internal_static_com_appodeal_ads_Request_descriptor;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public Request getDefaultInstanceForType() {
            return Request.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Request build() {
            Request buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Request buildPartial() {
            Request request = new Request(this);
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                request.app_ = this.app_;
            } else {
                request.app_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> singleFieldBuilderV32 = this.sessionBuilder_;
            if (singleFieldBuilderV32 == null) {
                request.session_ = this.session_;
            } else {
                request.session_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV33 = this.deviceBuilder_;
            if (singleFieldBuilderV33 == null) {
                request.device_ = this.device_;
            } else {
                request.device_ = singleFieldBuilderV33.build();
            }
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV34 = this.userBuilder_;
            if (singleFieldBuilderV34 == null) {
                request.user_ = this.user_;
            } else {
                request.user_ = singleFieldBuilderV34.build();
            }
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV35 = this.regsBuilder_;
            if (singleFieldBuilderV35 == null) {
                request.regs_ = this.regs_;
            } else {
                request.regs_ = singleFieldBuilderV35.build();
            }
            SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV36 = this.geoBuilder_;
            if (singleFieldBuilderV36 == null) {
                request.geo_ = this.geo_;
            } else {
                request.geo_ = singleFieldBuilderV36.build();
            }
            SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> singleFieldBuilderV37 = this.extBuilder_;
            if (singleFieldBuilderV37 == null) {
                request.ext_ = this.ext_;
            } else {
                request.ext_ = singleFieldBuilderV37.build();
            }
            request.impid_ = this.impid_;
            request.mainId_ = this.mainId_;
            SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> singleFieldBuilderV38 = this.getBuilder_;
            if (singleFieldBuilderV38 == null) {
                request.get_ = this.get_;
            } else {
                request.get_ = singleFieldBuilderV38.build();
            }
            SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> singleFieldBuilderV39 = this.statsBuilder_;
            if (singleFieldBuilderV39 == null) {
                request.stats_ = this.stats_;
            } else {
                request.stats_ = singleFieldBuilderV39.build();
            }
            SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> singleFieldBuilderV310 = this.eventBuilder_;
            if (singleFieldBuilderV310 == null) {
                request.event_ = this.event_;
            } else {
                request.event_ = singleFieldBuilderV310.build();
            }
            request.timestamp_ = this.timestamp_;
            request.customState_ = this.customState_;
            SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> singleFieldBuilderV311 = this.servicesDataBuilder_;
            if (singleFieldBuilderV311 == null) {
                request.servicesData_ = this.servicesData_;
            } else {
                request.servicesData_ = singleFieldBuilderV311.build();
            }
            onBuilt();
            return request;
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
            if (message instanceof Request) {
                return mergeFrom((Request) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Request request) {
            if (request == Request.getDefaultInstance()) {
                return this;
            }
            if (request.hasApp()) {
                mergeApp(request.getApp());
            }
            if (request.hasSession()) {
                mergeSession(request.getSession());
            }
            if (request.hasDevice()) {
                mergeDevice(request.getDevice());
            }
            if (request.hasUser()) {
                mergeUser(request.getUser());
            }
            if (request.hasRegs()) {
                mergeRegs(request.getRegs());
            }
            if (request.hasGeo()) {
                mergeGeo(request.getGeo());
            }
            if (request.hasExt()) {
                mergeExt(request.getExt());
            }
            if (!request.getImpid().isEmpty()) {
                this.impid_ = request.impid_;
                onChanged();
            }
            if (!request.getMainId().isEmpty()) {
                this.mainId_ = request.mainId_;
                onChanged();
            }
            if (request.hasGet()) {
                mergeGet(request.getGet());
            }
            if (request.hasStats()) {
                mergeStats(request.getStats());
            }
            if (request.hasEvent()) {
                mergeEvent(request.getEvent());
            }
            if (request.getTimestamp() != 0) {
                setTimestamp(request.getTimestamp());
            }
            if (!request.getCustomState().isEmpty()) {
                this.customState_ = request.customState_;
                onChanged();
            }
            if (request.hasServicesData()) {
                mergeServicesData(request.getServicesData());
            }
            mergeUnknownFields(request.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.appodeal.ads.api.Request.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r3, com.explorestack.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.Parser r1 = com.appodeal.ads.api.Request.access$2000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.appodeal.ads.api.Request r3 = (com.appodeal.ads.api.Request) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.appodeal.ads.api.Request r4 = (com.appodeal.ads.api.Request) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.api.Request.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.appodeal.ads.api.Request$Builder");
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasApp() {
            return (this.appBuilder_ == null && this.app_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public App getApp() {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                App app = this.app_;
                return app == null ? App.getDefaultInstance() : app;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setApp(App app) {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                app.getClass();
                this.app_ = app;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(app);
            }
            return this;
        }

        public Builder setApp(App.Builder builder) {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.app_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeApp(App app) {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 == null) {
                App app2 = this.app_;
                if (app2 != null) {
                    this.app_ = App.newBuilder(app2).mergeFrom(app).buildPartial();
                } else {
                    this.app_ = app;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(app);
            }
            return this;
        }

        public Builder clearApp() {
            if (this.appBuilder_ == null) {
                this.app_ = null;
                onChanged();
            } else {
                this.app_ = null;
                this.appBuilder_ = null;
            }
            return this;
        }

        public App.Builder getAppBuilder() {
            onChanged();
            return getAppFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public AppOrBuilder getAppOrBuilder() {
            SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> singleFieldBuilderV3 = this.appBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            App app = this.app_;
            return app == null ? App.getDefaultInstance() : app;
        }

        private SingleFieldBuilderV3<App, App.Builder, AppOrBuilder> getAppFieldBuilder() {
            if (this.appBuilder_ == null) {
                this.appBuilder_ = new SingleFieldBuilderV3<>(getApp(), getParentForChildren(), isClean());
                this.app_ = null;
            }
            return this.appBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasSession() {
            return (this.sessionBuilder_ == null && this.session_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Session getSession() {
            SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> singleFieldBuilderV3 = this.sessionBuilder_;
            if (singleFieldBuilderV3 == null) {
                Session session = this.session_;
                return session == null ? Session.getDefaultInstance() : session;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setSession(Session session) {
            SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> singleFieldBuilderV3 = this.sessionBuilder_;
            if (singleFieldBuilderV3 == null) {
                session.getClass();
                this.session_ = session;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(session);
            }
            return this;
        }

        public Builder setSession(Session.Builder builder) {
            SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> singleFieldBuilderV3 = this.sessionBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.session_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeSession(Session session) {
            SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> singleFieldBuilderV3 = this.sessionBuilder_;
            if (singleFieldBuilderV3 == null) {
                Session session2 = this.session_;
                if (session2 != null) {
                    this.session_ = Session.newBuilder(session2).mergeFrom(session).buildPartial();
                } else {
                    this.session_ = session;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(session);
            }
            return this;
        }

        public Builder clearSession() {
            if (this.sessionBuilder_ == null) {
                this.session_ = null;
                onChanged();
            } else {
                this.session_ = null;
                this.sessionBuilder_ = null;
            }
            return this;
        }

        public Session.Builder getSessionBuilder() {
            onChanged();
            return getSessionFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public SessionOrBuilder getSessionOrBuilder() {
            SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> singleFieldBuilderV3 = this.sessionBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Session session = this.session_;
            return session == null ? Session.getDefaultInstance() : session;
        }

        private SingleFieldBuilderV3<Session, Session.Builder, SessionOrBuilder> getSessionFieldBuilder() {
            if (this.sessionBuilder_ == null) {
                this.sessionBuilder_ = new SingleFieldBuilderV3<>(getSession(), getParentForChildren(), isClean());
                this.session_ = null;
            }
            return this.sessionBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasDevice() {
            return (this.deviceBuilder_ == null && this.device_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Device getDevice() {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                Device device = this.device_;
                return device == null ? Device.getDefaultInstance() : device;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setDevice(Device device) {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                device.getClass();
                this.device_ = device;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(device);
            }
            return this;
        }

        public Builder setDevice(Device.Builder builder) {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.device_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeDevice(Device device) {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 == null) {
                Device device2 = this.device_;
                if (device2 != null) {
                    this.device_ = Device.newBuilder(device2).mergeFrom(device).buildPartial();
                } else {
                    this.device_ = device;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(device);
            }
            return this;
        }

        public Builder clearDevice() {
            if (this.deviceBuilder_ == null) {
                this.device_ = null;
                onChanged();
            } else {
                this.device_ = null;
                this.deviceBuilder_ = null;
            }
            return this;
        }

        public Device.Builder getDeviceBuilder() {
            onChanged();
            return getDeviceFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public DeviceOrBuilder getDeviceOrBuilder() {
            SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> singleFieldBuilderV3 = this.deviceBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Device device = this.device_;
            return device == null ? Device.getDefaultInstance() : device;
        }

        private SingleFieldBuilderV3<Device, Device.Builder, DeviceOrBuilder> getDeviceFieldBuilder() {
            if (this.deviceBuilder_ == null) {
                this.deviceBuilder_ = new SingleFieldBuilderV3<>(getDevice(), getParentForChildren(), isClean());
                this.device_ = null;
            }
            return this.deviceBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasUser() {
            return (this.userBuilder_ == null && this.user_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public User getUser() {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                User user = this.user_;
                return user == null ? User.getDefaultInstance() : user;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setUser(User user) {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                user.getClass();
                this.user_ = user;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(user);
            }
            return this;
        }

        public Builder setUser(User.Builder builder) {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.user_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeUser(User user) {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 == null) {
                User user2 = this.user_;
                if (user2 != null) {
                    this.user_ = User.newBuilder(user2).mergeFrom(user).buildPartial();
                } else {
                    this.user_ = user;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(user);
            }
            return this;
        }

        public Builder clearUser() {
            if (this.userBuilder_ == null) {
                this.user_ = null;
                onChanged();
            } else {
                this.user_ = null;
                this.userBuilder_ = null;
            }
            return this;
        }

        public User.Builder getUserBuilder() {
            onChanged();
            return getUserFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public UserOrBuilder getUserOrBuilder() {
            SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> singleFieldBuilderV3 = this.userBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            User user = this.user_;
            return user == null ? User.getDefaultInstance() : user;
        }

        private SingleFieldBuilderV3<User, User.Builder, UserOrBuilder> getUserFieldBuilder() {
            if (this.userBuilder_ == null) {
                this.userBuilder_ = new SingleFieldBuilderV3<>(getUser(), getParentForChildren(), isClean());
                this.user_ = null;
            }
            return this.userBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasRegs() {
            return (this.regsBuilder_ == null && this.regs_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Regs getRegs() {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Regs regs = this.regs_;
                return regs == null ? Regs.getDefaultInstance() : regs;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setRegs(Regs regs) {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                regs.getClass();
                this.regs_ = regs;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(regs);
            }
            return this;
        }

        public Builder setRegs(Regs.Builder builder) {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.regs_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeRegs(Regs regs) {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Regs regs2 = this.regs_;
                if (regs2 != null) {
                    this.regs_ = Regs.newBuilder(regs2).mergeFrom(regs).buildPartial();
                } else {
                    this.regs_ = regs;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(regs);
            }
            return this;
        }

        public Builder clearRegs() {
            if (this.regsBuilder_ == null) {
                this.regs_ = null;
                onChanged();
            } else {
                this.regs_ = null;
                this.regsBuilder_ = null;
            }
            return this;
        }

        public Regs.Builder getRegsBuilder() {
            onChanged();
            return getRegsFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public RegsOrBuilder getRegsOrBuilder() {
            SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> singleFieldBuilderV3 = this.regsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Regs regs = this.regs_;
            return regs == null ? Regs.getDefaultInstance() : regs;
        }

        private SingleFieldBuilderV3<Regs, Regs.Builder, RegsOrBuilder> getRegsFieldBuilder() {
            if (this.regsBuilder_ == null) {
                this.regsBuilder_ = new SingleFieldBuilderV3<>(getRegs(), getParentForChildren(), isClean());
                this.regs_ = null;
            }
            return this.regsBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasGeo() {
            return (this.geoBuilder_ == null && this.geo_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Geo getGeo() {
            SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
            if (singleFieldBuilderV3 == null) {
                Geo geo = this.geo_;
                return geo == null ? Geo.getDefaultInstance() : geo;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setGeo(Geo geo) {
            SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
            if (singleFieldBuilderV3 == null) {
                geo.getClass();
                this.geo_ = geo;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(geo);
            }
            return this;
        }

        public Builder setGeo(Geo.Builder builder) {
            SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.geo_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeGeo(Geo geo) {
            SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
            if (singleFieldBuilderV3 == null) {
                Geo geo2 = this.geo_;
                if (geo2 != null) {
                    this.geo_ = Geo.newBuilder(geo2).mergeFrom(geo).buildPartial();
                } else {
                    this.geo_ = geo;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(geo);
            }
            return this;
        }

        public Builder clearGeo() {
            if (this.geoBuilder_ == null) {
                this.geo_ = null;
                onChanged();
            } else {
                this.geo_ = null;
                this.geoBuilder_ = null;
            }
            return this;
        }

        public Geo.Builder getGeoBuilder() {
            onChanged();
            return getGeoFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public GeoOrBuilder getGeoOrBuilder() {
            SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> singleFieldBuilderV3 = this.geoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Geo geo = this.geo_;
            return geo == null ? Geo.getDefaultInstance() : geo;
        }

        private SingleFieldBuilderV3<Geo, Geo.Builder, GeoOrBuilder> getGeoFieldBuilder() {
            if (this.geoBuilder_ == null) {
                this.geoBuilder_ = new SingleFieldBuilderV3<>(getGeo(), getParentForChildren(), isClean());
                this.geo_ = null;
            }
            return this.geoBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasExt() {
            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Extra getExt() {
            SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                Extra extra = this.ext_;
                return extra == null ? Extra.getDefaultInstance() : extra;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setExt(Extra extra) {
            SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                extra.getClass();
                this.ext_ = extra;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(extra);
            }
            return this;
        }

        public Builder setExt(Extra.Builder builder) {
            SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.ext_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeExt(Extra extra) {
            SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                Extra extra2 = this.ext_;
                if (extra2 != null) {
                    this.ext_ = Extra.newBuilder(extra2).mergeFrom(extra).buildPartial();
                } else {
                    this.ext_ = extra;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(extra);
            }
            return this;
        }

        public Builder clearExt() {
            if (this.extBuilder_ == null) {
                this.ext_ = null;
                onChanged();
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            return this;
        }

        public Extra.Builder getExtBuilder() {
            onChanged();
            return getExtFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public ExtraOrBuilder getExtOrBuilder() {
            SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Extra extra = this.ext_;
            return extra == null ? Extra.getDefaultInstance() : extra;
        }

        private SingleFieldBuilderV3<Extra, Extra.Builder, ExtraOrBuilder> getExtFieldBuilder() {
            if (this.extBuilder_ == null) {
                this.extBuilder_ = new SingleFieldBuilderV3<>(getExt(), getParentForChildren(), isClean());
                this.ext_ = null;
            }
            return this.extBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public String getImpid() {
            Object obj = this.impid_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.impid_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public ByteString getImpidBytes() {
            Object obj = this.impid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.impid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setImpid(String str) {
            str.getClass();
            this.impid_ = str;
            onChanged();
            return this;
        }

        public Builder clearImpid() {
            this.impid_ = Request.getDefaultInstance().getImpid();
            onChanged();
            return this;
        }

        public Builder setImpidBytes(ByteString byteString) {
            byteString.getClass();
            Request.checkByteStringIsUtf8(byteString);
            this.impid_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public String getMainId() {
            Object obj = this.mainId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.mainId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public ByteString getMainIdBytes() {
            Object obj = this.mainId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mainId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setMainId(String str) {
            str.getClass();
            this.mainId_ = str;
            onChanged();
            return this;
        }

        public Builder clearMainId() {
            this.mainId_ = Request.getDefaultInstance().getMainId();
            onChanged();
            return this;
        }

        public Builder setMainIdBytes(ByteString byteString) {
            byteString.getClass();
            Request.checkByteStringIsUtf8(byteString);
            this.mainId_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasGet() {
            return (this.getBuilder_ == null && this.get_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Get getGet() {
            SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> singleFieldBuilderV3 = this.getBuilder_;
            if (singleFieldBuilderV3 == null) {
                Get get = this.get_;
                return get == null ? Get.getDefaultInstance() : get;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setGet(Get get) {
            SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> singleFieldBuilderV3 = this.getBuilder_;
            if (singleFieldBuilderV3 == null) {
                get.getClass();
                this.get_ = get;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(get);
            }
            return this;
        }

        public Builder setGet(Get.Builder builder) {
            SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> singleFieldBuilderV3 = this.getBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.get_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeGet(Get get) {
            SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> singleFieldBuilderV3 = this.getBuilder_;
            if (singleFieldBuilderV3 == null) {
                Get get2 = this.get_;
                if (get2 != null) {
                    this.get_ = Get.newBuilder(get2).mergeFrom(get).buildPartial();
                } else {
                    this.get_ = get;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(get);
            }
            return this;
        }

        public Builder clearGet() {
            if (this.getBuilder_ == null) {
                this.get_ = null;
                onChanged();
            } else {
                this.get_ = null;
                this.getBuilder_ = null;
            }
            return this;
        }

        public Get.Builder getGetBuilder() {
            onChanged();
            return getGetFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public GetOrBuilder getGetOrBuilder() {
            SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> singleFieldBuilderV3 = this.getBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Get get = this.get_;
            return get == null ? Get.getDefaultInstance() : get;
        }

        private SingleFieldBuilderV3<Get, Get.Builder, GetOrBuilder> getGetFieldBuilder() {
            if (this.getBuilder_ == null) {
                this.getBuilder_ = new SingleFieldBuilderV3<>(getGet(), getParentForChildren(), isClean());
                this.get_ = null;
            }
            return this.getBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasStats() {
            return (this.statsBuilder_ == null && this.stats_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Stats getStats() {
            SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> singleFieldBuilderV3 = this.statsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Stats stats = this.stats_;
                return stats == null ? Stats.getDefaultInstance() : stats;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setStats(Stats stats) {
            SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> singleFieldBuilderV3 = this.statsBuilder_;
            if (singleFieldBuilderV3 == null) {
                stats.getClass();
                this.stats_ = stats;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(stats);
            }
            return this;
        }

        public Builder setStats(Stats.Builder builder) {
            SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> singleFieldBuilderV3 = this.statsBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.stats_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeStats(Stats stats) {
            SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> singleFieldBuilderV3 = this.statsBuilder_;
            if (singleFieldBuilderV3 == null) {
                Stats stats2 = this.stats_;
                if (stats2 != null) {
                    this.stats_ = Stats.newBuilder(stats2).mergeFrom(stats).buildPartial();
                } else {
                    this.stats_ = stats;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(stats);
            }
            return this;
        }

        public Builder clearStats() {
            if (this.statsBuilder_ == null) {
                this.stats_ = null;
                onChanged();
            } else {
                this.stats_ = null;
                this.statsBuilder_ = null;
            }
            return this;
        }

        public Stats.Builder getStatsBuilder() {
            onChanged();
            return getStatsFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public StatsOrBuilder getStatsOrBuilder() {
            SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> singleFieldBuilderV3 = this.statsBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Stats stats = this.stats_;
            return stats == null ? Stats.getDefaultInstance() : stats;
        }

        private SingleFieldBuilderV3<Stats, Stats.Builder, StatsOrBuilder> getStatsFieldBuilder() {
            if (this.statsBuilder_ == null) {
                this.statsBuilder_ = new SingleFieldBuilderV3<>(getStats(), getParentForChildren(), isClean());
                this.stats_ = null;
            }
            return this.statsBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasEvent() {
            return (this.eventBuilder_ == null && this.event_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Event getEvent() {
            SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> singleFieldBuilderV3 = this.eventBuilder_;
            if (singleFieldBuilderV3 == null) {
                Event event = this.event_;
                return event == null ? Event.getDefaultInstance() : event;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setEvent(Event event) {
            SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> singleFieldBuilderV3 = this.eventBuilder_;
            if (singleFieldBuilderV3 == null) {
                event.getClass();
                this.event_ = event;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(event);
            }
            return this;
        }

        public Builder setEvent(Event.Builder builder) {
            SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> singleFieldBuilderV3 = this.eventBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.event_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeEvent(Event event) {
            SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> singleFieldBuilderV3 = this.eventBuilder_;
            if (singleFieldBuilderV3 == null) {
                Event event2 = this.event_;
                if (event2 != null) {
                    this.event_ = Event.newBuilder(event2).mergeFrom(event).buildPartial();
                } else {
                    this.event_ = event;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(event);
            }
            return this;
        }

        public Builder clearEvent() {
            if (this.eventBuilder_ == null) {
                this.event_ = null;
                onChanged();
            } else {
                this.event_ = null;
                this.eventBuilder_ = null;
            }
            return this;
        }

        public Event.Builder getEventBuilder() {
            onChanged();
            return getEventFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public EventOrBuilder getEventOrBuilder() {
            SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> singleFieldBuilderV3 = this.eventBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Event event = this.event_;
            return event == null ? Event.getDefaultInstance() : event;
        }

        private SingleFieldBuilderV3<Event, Event.Builder, EventOrBuilder> getEventFieldBuilder() {
            if (this.eventBuilder_ == null) {
                this.eventBuilder_ = new SingleFieldBuilderV3<>(getEvent(), getParentForChildren(), isClean());
                this.event_ = null;
            }
            return this.eventBuilder_;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public long getTimestamp() {
            return this.timestamp_;
        }

        public Builder setTimestamp(long j) {
            this.timestamp_ = j;
            onChanged();
            return this;
        }

        public Builder clearTimestamp() {
            this.timestamp_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public String getCustomState() {
            Object obj = this.customState_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.customState_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public ByteString getCustomStateBytes() {
            Object obj = this.customState_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.customState_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Builder setCustomState(String str) {
            str.getClass();
            this.customState_ = str;
            onChanged();
            return this;
        }

        public Builder clearCustomState() {
            this.customState_ = Request.getDefaultInstance().getCustomState();
            onChanged();
            return this;
        }

        public Builder setCustomStateBytes(ByteString byteString) {
            byteString.getClass();
            Request.checkByteStringIsUtf8(byteString);
            this.customState_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public boolean hasServicesData() {
            return (this.servicesDataBuilder_ == null && this.servicesData_ == null) ? false : true;
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public Services getServicesData() {
            SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> singleFieldBuilderV3 = this.servicesDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                Services services = this.servicesData_;
                return services == null ? Services.getDefaultInstance() : services;
            }
            return singleFieldBuilderV3.getMessage();
        }

        public Builder setServicesData(Services services) {
            SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> singleFieldBuilderV3 = this.servicesDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                services.getClass();
                this.servicesData_ = services;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(services);
            }
            return this;
        }

        public Builder setServicesData(Services.Builder builder) {
            SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> singleFieldBuilderV3 = this.servicesDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.servicesData_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public Builder mergeServicesData(Services services) {
            SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> singleFieldBuilderV3 = this.servicesDataBuilder_;
            if (singleFieldBuilderV3 == null) {
                Services services2 = this.servicesData_;
                if (services2 != null) {
                    this.servicesData_ = Services.newBuilder(services2).mergeFrom(services).buildPartial();
                } else {
                    this.servicesData_ = services;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(services);
            }
            return this;
        }

        public Builder clearServicesData() {
            if (this.servicesDataBuilder_ == null) {
                this.servicesData_ = null;
                onChanged();
            } else {
                this.servicesData_ = null;
                this.servicesDataBuilder_ = null;
            }
            return this;
        }

        public Services.Builder getServicesDataBuilder() {
            onChanged();
            return getServicesDataFieldBuilder().getBuilder();
        }

        @Override // com.appodeal.ads.api.RequestOrBuilder
        public ServicesOrBuilder getServicesDataOrBuilder() {
            SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> singleFieldBuilderV3 = this.servicesDataBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Services services = this.servicesData_;
            return services == null ? Services.getDefaultInstance() : services;
        }

        private SingleFieldBuilderV3<Services, Services.Builder, ServicesOrBuilder> getServicesDataFieldBuilder() {
            if (this.servicesDataBuilder_ == null) {
                this.servicesDataBuilder_ = new SingleFieldBuilderV3<>(getServicesData(), getParentForChildren(), isClean());
                this.servicesData_ = null;
            }
            return this.servicesDataBuilder_;
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

    public static Request getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Request> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Parser<Request> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public Request getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }
}
