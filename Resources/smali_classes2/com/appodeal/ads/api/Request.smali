.class public final Lcom/appodeal/ads/api/Request;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Request.java"

# interfaces
.implements Lcom/appodeal/ads/api/RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/api/Request$Builder;
    }
.end annotation


# static fields
.field public static final APP_FIELD_NUMBER:I = 0x1

.field public static final CUSTOM_STATE_FIELD_NUMBER:I = 0xe

.field private static final DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Request;

.field public static final DEVICE_FIELD_NUMBER:I = 0x3

.field public static final EVENT_FIELD_NUMBER:I = 0xc

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final GEO_FIELD_NUMBER:I = 0x6

.field public static final GET_FIELD_NUMBER:I = 0xa

.field public static final IMPID_FIELD_NUMBER:I = 0x8

.field public static final MAIN_ID_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGS_FIELD_NUMBER:I = 0x5

.field public static final SERVICES_DATA_FIELD_NUMBER:I = 0xf

.field public static final SESSION_FIELD_NUMBER:I = 0x2

.field public static final STATS_FIELD_NUMBER:I = 0xb

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0xd

.field public static final USER_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private app_:Lcom/appodeal/ads/api/App;

.field private volatile customState_:Ljava/lang/Object;

.field private device_:Lcom/appodeal/ads/api/Device;

.field private event_:Lcom/appodeal/ads/api/Event;

.field private ext_:Lcom/appodeal/ads/api/Extra;

.field private geo_:Lcom/appodeal/ads/api/Geo;

.field private get_:Lcom/appodeal/ads/api/Get;

.field private volatile impid_:Ljava/lang/Object;

.field private volatile mainId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private regs_:Lcom/appodeal/ads/api/Regs;

.field private servicesData_:Lcom/appodeal/ads/api/Services;

.field private session_:Lcom/appodeal/ads/api/Session;

.field private stats_:Lcom/appodeal/ads/api/Stats;

.field private timestamp_:J

.field private user_:Lcom/appodeal/ads/api/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3521
    new-instance v0, Lcom/appodeal/ads/api/Request;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Request;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Request;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Request;

    .line 3529
    new-instance v0, Lcom/appodeal/ads/api/Request$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Request$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 815
    iput-byte v0, p0, Lcom/appodeal/ads/api/Request;->memoizedIsInitialized:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/appodeal/ads/api/Request;-><init>()V

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 225
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/appodeal/ads/api/Request;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 213
    :sswitch_0
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Services;->toBuilder()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v4

    .line 216
    :cond_1
    invoke-static {}, Lcom/appodeal/ads/api/Services;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Services;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;

    .line 219
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Services$Builder;->buildPartial()Lcom/appodeal/ads/api/Services;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    goto :goto_0

    .line 206
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 208
    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    goto :goto_0

    .line 202
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appodeal/ads/api/Request;->timestamp_:J

    goto :goto_0

    .line 189
    :sswitch_3
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Event;->toBuilder()Lcom/appodeal/ads/api/Event$Builder;

    move-result-object v4

    .line 192
    :cond_2
    invoke-static {}, Lcom/appodeal/ads/api/Event;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Event;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Event$Builder;->mergeFrom(Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event$Builder;

    .line 195
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Event$Builder;->buildPartial()Lcom/appodeal/ads/api/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    goto :goto_0

    .line 176
    :sswitch_4
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    if-eqz v2, :cond_3

    .line 177
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Stats;->toBuilder()Lcom/appodeal/ads/api/Stats$Builder;

    move-result-object v4

    .line 179
    :cond_3
    invoke-static {}, Lcom/appodeal/ads/api/Stats;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Stats;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    if-eqz v4, :cond_0

    .line 181
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Stats$Builder;->mergeFrom(Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats$Builder;

    .line 182
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Stats$Builder;->buildPartial()Lcom/appodeal/ads/api/Stats;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    goto :goto_0

    .line 163
    :sswitch_5
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Get;->toBuilder()Lcom/appodeal/ads/api/Get$Builder;

    move-result-object v4

    .line 166
    :cond_4
    invoke-static {}, Lcom/appodeal/ads/api/Get;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Get;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Get$Builder;->mergeFrom(Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get$Builder;

    .line 169
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Get$Builder;->buildPartial()Lcom/appodeal/ads/api/Get;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    goto/16 :goto_0

    .line 156
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 158
    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 150
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 152
    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 138
    :sswitch_8
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    if-eqz v2, :cond_5

    .line 139
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Extra;->toBuilder()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v4

    .line 141
    :cond_5
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Extra;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;

    .line 144
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Extra$Builder;->buildPartial()Lcom/appodeal/ads/api/Extra;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    goto/16 :goto_0

    .line 125
    :sswitch_9
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    if-eqz v2, :cond_6

    .line 126
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Geo;->toBuilder()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v4

    .line 128
    :cond_6
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Geo;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;

    .line 131
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Geo$Builder;->buildPartial()Lcom/appodeal/ads/api/Geo;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    goto/16 :goto_0

    .line 112
    :sswitch_a
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    if-eqz v2, :cond_7

    .line 113
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Regs;->toBuilder()Lcom/appodeal/ads/api/Regs$Builder;

    move-result-object v4

    .line 115
    :cond_7
    invoke-static {}, Lcom/appodeal/ads/api/Regs;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Regs;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Regs$Builder;->mergeFrom(Lcom/appodeal/ads/api/Regs;)Lcom/appodeal/ads/api/Regs$Builder;

    .line 118
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Regs$Builder;->buildPartial()Lcom/appodeal/ads/api/Regs;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    goto/16 :goto_0

    .line 99
    :sswitch_b
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    if-eqz v2, :cond_8

    .line 100
    invoke-virtual {v2}, Lcom/appodeal/ads/api/User;->toBuilder()Lcom/appodeal/ads/api/User$Builder;

    move-result-object v4

    .line 102
    :cond_8
    invoke-static {}, Lcom/appodeal/ads/api/User;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/User;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/User$Builder;->mergeFrom(Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User$Builder;

    .line 105
    invoke-virtual {v4}, Lcom/appodeal/ads/api/User$Builder;->buildPartial()Lcom/appodeal/ads/api/User;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    goto/16 :goto_0

    .line 86
    :sswitch_c
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    if-eqz v2, :cond_9

    .line 87
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Device;->toBuilder()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v4

    .line 89
    :cond_9
    invoke-static {}, Lcom/appodeal/ads/api/Device;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Device;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;

    .line 92
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Device$Builder;->buildPartial()Lcom/appodeal/ads/api/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    goto/16 :goto_0

    .line 73
    :sswitch_d
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    if-eqz v2, :cond_a

    .line 74
    invoke-virtual {v2}, Lcom/appodeal/ads/api/Session;->toBuilder()Lcom/appodeal/ads/api/Session$Builder;

    move-result-object v4

    .line 76
    :cond_a
    invoke-static {}, Lcom/appodeal/ads/api/Session;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/Session;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/Session$Builder;->mergeFrom(Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session$Builder;

    .line 79
    invoke-virtual {v4}, Lcom/appodeal/ads/api/Session$Builder;->buildPartial()Lcom/appodeal/ads/api/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    goto/16 :goto_0

    .line 60
    :sswitch_e
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;

    if-eqz v2, :cond_b

    .line 61
    invoke-virtual {v2}, Lcom/appodeal/ads/api/App;->toBuilder()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v4

    .line 63
    :cond_b
    invoke-static {}, Lcom/appodeal/ads/api/App;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/api/App;

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v4, v2}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;

    .line 66
    invoke-virtual {v4}, Lcom/appodeal/ads/api/App$Builder;->buildPartial()Lcom/appodeal/ads/api/App;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_f
    move v1, v3

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 236
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 237
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 234
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 240
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->makeExtensionsImmutable()V

    .line 241
    throw p1

    .line 239
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 240
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x32 -> :sswitch_9
        0x3a -> :sswitch_8
        0x42 -> :sswitch_7
        0x4a -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/appodeal/ads/api/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/api/Request;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 815
    iput-byte p1, p0, Lcom/appodeal/ads/api/Request;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Request$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Request;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/appodeal/ads/api/Request;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/appodeal/ads/api/Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/appodeal/ads/api/Request;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/appodeal/ads/api/Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Get;)Lcom/appodeal/ads/api/Get;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Stats;)Lcom/appodeal/ads/api/Stats;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Event;)Lcom/appodeal/ads/api/Event;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/appodeal/ads/api/Request;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/appodeal/ads/api/Request;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/appodeal/ads/api/Request;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/appodeal/ads/api/Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/appodeal/ads/api/Request;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/appodeal/ads/api/Request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Request;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Request;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/appodeal/ads/api/Request;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$402(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;

    return-object p1
.end method

.method static synthetic access$502(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Session;)Lcom/appodeal/ads/api/Session;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    return-object p1
.end method

.method static synthetic access$602(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    return-object p1
.end method

.method static synthetic access$702(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/User;)Lcom/appodeal/ads/api/User;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    return-object p1
.end method

.method static synthetic access$802(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Regs;)Lcom/appodeal/ads/api/Regs;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    return-object p1
.end method

.method static synthetic access$902(Lcom/appodeal/ads/api/Request;Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/appodeal/ads/api/Request;
    .locals 1

    .line 3525
    sget-object v0, Lcom/appodeal/ads/api/Request;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 245
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Request_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/appodeal/ads/api/Request$Builder;
    .locals 1

    .line 1160
    sget-object v0, Lcom/appodeal/ads/api/Request;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Request;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Request;->toBuilder()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appodeal/ads/api/Request;)Lcom/appodeal/ads/api/Request$Builder;
    .locals 1

    .line 1163
    sget-object v0, Lcom/appodeal/ads/api/Request;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Request;

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Request;->toBuilder()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Request$Builder;->mergeFrom(Lcom/appodeal/ads/api/Request;)Lcom/appodeal/ads/api/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1133
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1134
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1140
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1141
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1101
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1107
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1147
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1154
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1122
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1129
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1090
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1096
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1111
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1117
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Request;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Request;",
            ">;"
        }
    .end annotation

    .line 3540
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 950
    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/api/Request;

    if-nez v1, :cond_1

    .line 951
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 953
    :cond_1
    check-cast p1, Lcom/appodeal/ads/api/Request;

    .line 955
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasApp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasApp()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 956
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasApp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 957
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getApp()Lcom/appodeal/ads/api/App;

    move-result-object v1

    .line 958
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getApp()Lcom/appodeal/ads/api/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/App;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 960
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasSession()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasSession()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 961
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 962
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getSession()Lcom/appodeal/ads/api/Session;

    move-result-object v1

    .line 963
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getSession()Lcom/appodeal/ads/api/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Session;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 965
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasDevice()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasDevice()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 966
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 967
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getDevice()Lcom/appodeal/ads/api/Device;

    move-result-object v1

    .line 968
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getDevice()Lcom/appodeal/ads/api/Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Device;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 970
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasUser()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasUser()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 971
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasUser()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 972
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getUser()Lcom/appodeal/ads/api/User;

    move-result-object v1

    .line 973
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getUser()Lcom/appodeal/ads/api/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/User;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 975
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasRegs()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasRegs()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 976
    :cond_a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasRegs()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 977
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getRegs()Lcom/appodeal/ads/api/Regs;

    move-result-object v1

    .line 978
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getRegs()Lcom/appodeal/ads/api/Regs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Regs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 980
    :cond_b
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasGeo()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 981
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 982
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGeo()Lcom/appodeal/ads/api/Geo;

    move-result-object v1

    .line 983
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getGeo()Lcom/appodeal/ads/api/Geo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 985
    :cond_d
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 986
    :cond_e
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 987
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getExt()Lcom/appodeal/ads/api/Extra;

    move-result-object v1

    .line 988
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getExt()Lcom/appodeal/ads/api/Extra;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Extra;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 990
    :cond_f
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getImpid()Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getImpid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 992
    :cond_10
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getMainId()Ljava/lang/String;

    move-result-object v1

    .line 993
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getMainId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 994
    :cond_11
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasGet()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasGet()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 995
    :cond_12
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasGet()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 996
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGet()Lcom/appodeal/ads/api/Get;

    move-result-object v1

    .line 997
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getGet()Lcom/appodeal/ads/api/Get;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Get;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 999
    :cond_13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasStats()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasStats()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 1000
    :cond_14
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasStats()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1001
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getStats()Lcom/appodeal/ads/api/Stats;

    move-result-object v1

    .line 1002
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getStats()Lcom/appodeal/ads/api/Stats;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Stats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 1004
    :cond_15
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasEvent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasEvent()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 1005
    :cond_16
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1006
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getEvent()Lcom/appodeal/ads/api/Event;

    move-result-object v1

    .line 1007
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getEvent()Lcom/appodeal/ads/api/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Event;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 1009
    :cond_17
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getTimestamp()J

    move-result-wide v1

    .line 1010
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getTimestamp()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_18

    return v3

    .line 1011
    :cond_18
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getCustomState()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getCustomState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    .line 1013
    :cond_19
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasServicesData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->hasServicesData()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 1014
    :cond_1a
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasServicesData()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1015
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getServicesData()Lcom/appodeal/ads/api/Services;

    move-result-object v1

    .line 1016
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->getServicesData()Lcom/appodeal/ads/api/Services;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/api/Services;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    .line 1018
    :cond_1b
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    return v3

    :cond_1c
    return v0
.end method

.method public getApp()Lcom/appodeal/ads/api/App;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAppOrBuilder()Lcom/appodeal/ads/api/AppOrBuilder;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getApp()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public getCustomState()Ljava/lang/String;
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    .line 744
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 745
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 747
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 749
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 750
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    return-object v0
.end method

.method public getCustomStateBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    .line 766
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 767
    check-cast v0, Ljava/lang/String;

    .line 768
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 770
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    return-object v0

    .line 773
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Request;
    .locals 1

    .line 3550
    sget-object v0, Lcom/appodeal/ads/api/Request;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lcom/appodeal/ads/api/Device;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeviceOrBuilder()Lcom/appodeal/ads/api/DeviceOrBuilder;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getDevice()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public getEvent()Lcom/appodeal/ads/api/Event;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Event;->getDefaultInstance()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEventOrBuilder()Lcom/appodeal/ads/api/EventOrBuilder;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getEvent()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/appodeal/ads/api/Extra;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Extra;->getDefaultInstance()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtOrBuilder()Lcom/appodeal/ads/api/ExtraOrBuilder;
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getExt()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public getGeo()Lcom/appodeal/ads/api/Geo;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Geo;->getDefaultInstance()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/appodeal/ads/api/GeoOrBuilder;
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGeo()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public getGet()Lcom/appodeal/ads/api/Get;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Get;->getDefaultInstance()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGetOrBuilder()Lcom/appodeal/ads/api/GetOrBuilder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGet()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    return-object v0
.end method

.method public getImpid()Ljava/lang/String;
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    .line 523
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 524
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 526
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 528
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 529
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getImpidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    .line 545
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 546
    check-cast v0, Ljava/lang/String;

    .line 547
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 549
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    return-object v0

    .line 552
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMainId()Ljava/lang/String;
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    .line 569
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 570
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 572
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 574
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 575
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMainIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    .line 591
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 592
    check-cast v0, Ljava/lang/String;

    .line 593
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 595
    iput-object v0, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    return-object v0

    .line 598
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/appodeal/ads/api/Request;",
            ">;"
        }
    .end annotation

    .line 3545
    sget-object v0, Lcom/appodeal/ads/api/Request;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public getRegs()Lcom/appodeal/ads/api/Regs;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Regs;->getDefaultInstance()Lcom/appodeal/ads/api/Regs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRegsOrBuilder()Lcom/appodeal/ads/api/RegsOrBuilder;
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getRegs()Lcom/appodeal/ads/api/Regs;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 879
    iget v0, p0, Lcom/appodeal/ads/api/Request;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 885
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getApp()Lcom/appodeal/ads/api/App;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 887
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 889
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getSession()Lcom/appodeal/ads/api/Session;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 891
    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 893
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getDevice()Lcom/appodeal/ads/api/Device;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 895
    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 897
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getUser()Lcom/appodeal/ads/api/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 899
    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 901
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getRegs()Lcom/appodeal/ads/api/Regs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 903
    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGeo()Lcom/appodeal/ads/api/Geo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 907
    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 909
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getExt()Lcom/appodeal/ads/api/Extra;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 911
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getImpidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 912
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 914
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getMainIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 915
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 917
    :cond_9
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 919
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGet()Lcom/appodeal/ads/api/Get;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 921
    :cond_a
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 923
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getStats()Lcom/appodeal/ads/api/Stats;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 925
    :cond_b
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 927
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getEvent()Lcom/appodeal/ads/api/Event;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 929
    :cond_c
    iget-wide v1, p0, Lcom/appodeal/ads/api/Request;->timestamp_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_d

    const/16 v3, 0xd

    .line 931
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 933
    :cond_d
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getCustomStateBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 934
    iget-object v2, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 936
    :cond_e
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 938
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getServicesData()Lcom/appodeal/ads/api/Services;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    :cond_f
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 941
    iput v0, p0, Lcom/appodeal/ads/api/Request;->memoizedSize:I

    return v0
.end method

.method public getServicesData()Lcom/appodeal/ads/api/Services;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services;->getDefaultInstance()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServicesDataOrBuilder()Lcom/appodeal/ads/api/ServicesOrBuilder;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getServicesData()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/appodeal/ads/api/Session;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Session;->getDefaultInstance()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSessionOrBuilder()Lcom/appodeal/ads/api/SessionOrBuilder;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getSession()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/appodeal/ads/api/Stats;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Stats;->getDefaultInstance()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatsOrBuilder()Lcom/appodeal/ads/api/StatsOrBuilder;
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getStats()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 728
    iget-wide v0, p0, Lcom/appodeal/ads/api/Request;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUser()Lcom/appodeal/ads/api/User;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/User;->getDefaultInstance()Lcom/appodeal/ads/api/User;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserOrBuilder()Lcom/appodeal/ads/api/UserOrBuilder;
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getUser()Lcom/appodeal/ads/api/User;

    move-result-object v0

    return-object v0
.end method

.method public hasApp()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDevice()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEvent()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExt()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGeo()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGet()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegs()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServicesData()Z
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSession()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStats()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUser()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1024
    iget v0, p0, Lcom/appodeal/ads/api/Request;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1025
    iget v0, p0, Lcom/appodeal/ads/api/Request;->memoizedHashCode:I

    return v0

    .line 1028
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/api/Request;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 1029
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasApp()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1031
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getApp()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1033
    :cond_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1035
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getSession()Lcom/appodeal/ads/api/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Session;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1037
    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1039
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getDevice()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1041
    :cond_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 1043
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getUser()Lcom/appodeal/ads/api/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/User;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1045
    :cond_4
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasRegs()Z

    move-result v0

    if-eqz v0, :cond_5

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1047
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getRegs()Lcom/appodeal/ads/api/Regs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Regs;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1049
    :cond_5
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_6

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1051
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGeo()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Geo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1053
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 1055
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getExt()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Extra;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1058
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getImpid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0x35

    .line 1060
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1061
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasGet()Z

    move-result v0

    if-eqz v0, :cond_8

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x35

    .line 1063
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGet()Lcom/appodeal/ads/api/Get;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Get;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1065
    :cond_8
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasStats()Z

    move-result v0

    if-eqz v0, :cond_9

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 1067
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getStats()Lcom/appodeal/ads/api/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Stats;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1069
    :cond_9
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xc

    mul-int/lit8 v1, v1, 0x35

    .line 1071
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getEvent()Lcom/appodeal/ads/api/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Event;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xd

    mul-int/lit8 v1, v1, 0x35

    .line 1075
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getTimestamp()J

    move-result-wide v2

    .line 1074
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xe

    mul-int/lit8 v1, v1, 0x35

    .line 1077
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getCustomState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1078
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->hasServicesData()Z

    move-result v0

    if-eqz v0, :cond_b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x35

    .line 1080
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getServicesData()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    mul-int/lit8 v1, v1, 0x1d

    .line 1082
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1083
    iput v1, p0, Lcom/appodeal/ads/api/Request;->memoizedHashCode:I

    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 251
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Request_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Request;

    const-class v2, Lcom/appodeal/ads/api/Request$Builder;

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 818
    iget-byte v0, p0, Lcom/appodeal/ads/api/Request;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 822
    :cond_1
    iput-byte v1, p0, Lcom/appodeal/ads/api/Request;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/appodeal/ads/api/Request$Builder;
    .locals 1

    .line 1158
    invoke-static {}, Lcom/appodeal/ads/api/Request;->newBuilder()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Request$Builder;
    .locals 2

    .line 1174
    new-instance v0, Lcom/appodeal/ads/api/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/appodeal/ads/api/Request$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Request$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->newBuilderForType()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Request;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/appodeal/ads/api/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->newBuilderForType()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 32
    new-instance p1, Lcom/appodeal/ads/api/Request;

    invoke-direct {p1}, Lcom/appodeal/ads/api/Request;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/appodeal/ads/api/Request$Builder;
    .locals 2

    .line 1167
    sget-object v0, Lcom/appodeal/ads/api/Request;->DEFAULT_INSTANCE:Lcom/appodeal/ads/api/Request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1168
    new-instance v0, Lcom/appodeal/ads/api/Request$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Request$Builder;-><init>(Lcom/appodeal/ads/api/Request$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/api/Request$Builder;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/api/Request$Builder;-><init>(Lcom/appodeal/ads/api/Request$1;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/api/Request$Builder;->mergeFrom(Lcom/appodeal/ads/api/Request;)Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->toBuilder()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->toBuilder()Lcom/appodeal/ads/api/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->app_:Lcom/appodeal/ads/api/App;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 830
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getApp()Lcom/appodeal/ads/api/App;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->session_:Lcom/appodeal/ads/api/Session;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 833
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getSession()Lcom/appodeal/ads/api/Session;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->device_:Lcom/appodeal/ads/api/Device;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 836
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getDevice()Lcom/appodeal/ads/api/Device;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->user_:Lcom/appodeal/ads/api/User;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 839
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getUser()Lcom/appodeal/ads/api/User;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 841
    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->regs_:Lcom/appodeal/ads/api/Regs;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 842
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getRegs()Lcom/appodeal/ads/api/Regs;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 844
    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->geo_:Lcom/appodeal/ads/api/Geo;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 845
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGeo()Lcom/appodeal/ads/api/Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 847
    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->ext_:Lcom/appodeal/ads/api/Extra;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 848
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getExt()Lcom/appodeal/ads/api/Extra;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 850
    :cond_6
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getImpidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 851
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->impid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 853
    :cond_7
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getMainIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 854
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->mainId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 856
    :cond_8
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->get_:Lcom/appodeal/ads/api/Get;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 857
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getGet()Lcom/appodeal/ads/api/Get;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 859
    :cond_9
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->stats_:Lcom/appodeal/ads/api/Stats;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 860
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getStats()Lcom/appodeal/ads/api/Stats;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 862
    :cond_a
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->event_:Lcom/appodeal/ads/api/Event;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 863
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getEvent()Lcom/appodeal/ads/api/Event;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 865
    :cond_b
    iget-wide v0, p0, Lcom/appodeal/ads/api/Request;->timestamp_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 866
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 868
    :cond_c
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getCustomStateBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 869
    iget-object v1, p0, Lcom/appodeal/ads/api/Request;->customState_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 871
    :cond_d
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->servicesData_:Lcom/appodeal/ads/api/Services;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 872
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Request;->getServicesData()Lcom/appodeal/ads/api/Services;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 874
    :cond_e
    iget-object v0, p0, Lcom/appodeal/ads/api/Request;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
