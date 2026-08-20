.class public final enum Lcom/appodeal/ads/api/Device$ConnectionType;
.super Ljava/lang/Enum;
.source "Device.java"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/api/Device$ConnectionType;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final enum CONNECTIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final CONNECTIONTYPE_UNKNOWN_VALUE:I = 0x0

.field public static final enum ETHERNET:Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final ETHERNET_VALUE:I = 0x1

.field public static final enum MOBILE_2G:Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final MOBILE_2G_VALUE:I = 0x4

.field public static final enum MOBILE_3G:Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final MOBILE_3G_VALUE:I = 0x5

.field public static final enum MOBILE_4G:Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final MOBILE_4G_VALUE:I = 0x6

.field public static final enum MOBILE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final MOBILE_UNKNOWN_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Lcom/appodeal/ads/api/Device$ConnectionType;

.field private static final VALUES:[Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final enum WIFI:Lcom/appodeal/ads/api/Device$ConnectionType;

.field public static final WIFI_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/appodeal/ads/api/Device$ConnectionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 263
    new-instance v0, Lcom/appodeal/ads/api/Device$ConnectionType;

    const-string v1, "CONNECTIONTYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->CONNECTIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 267
    new-instance v1, Lcom/appodeal/ads/api/Device$ConnectionType;

    const-string v2, "ETHERNET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appodeal/ads/api/Device$ConnectionType;->ETHERNET:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 271
    new-instance v2, Lcom/appodeal/ads/api/Device$ConnectionType;

    const-string v3, "WIFI"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/appodeal/ads/api/Device$ConnectionType;->WIFI:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 275
    new-instance v3, Lcom/appodeal/ads/api/Device$ConnectionType;

    const-string v4, "MOBILE_UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 279
    new-instance v4, Lcom/appodeal/ads/api/Device$ConnectionType;

    const-string v5, "MOBILE_2G"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_2G:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 283
    new-instance v5, Lcom/appodeal/ads/api/Device$ConnectionType;

    const-string v6, "MOBILE_3G"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_3G:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 287
    new-instance v6, Lcom/appodeal/ads/api/Device$ConnectionType;

    const-string v7, "MOBILE_4G"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_4G:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 288
    new-instance v7, Lcom/appodeal/ads/api/Device$ConnectionType;

    const/4 v8, 0x7

    const/4 v9, -0x1

    const-string v10, "UNRECOGNIZED"

    invoke-direct {v7, v10, v8, v9}, Lcom/appodeal/ads/api/Device$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/appodeal/ads/api/Device$ConnectionType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 258
    filled-new-array/range {v0 .. v7}, [Lcom/appodeal/ads/api/Device$ConnectionType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->$VALUES:[Lcom/appodeal/ads/api/Device$ConnectionType;

    .line 361
    new-instance v0, Lcom/appodeal/ads/api/Device$ConnectionType$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Device$ConnectionType$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 385
    invoke-static {}, Lcom/appodeal/ads/api/Device$ConnectionType;->values()[Lcom/appodeal/ads/api/Device$ConnectionType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->VALUES:[Lcom/appodeal/ads/api/Device$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 402
    iput p3, p0, Lcom/appodeal/ads/api/Device$ConnectionType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/appodeal/ads/api/Device$ConnectionType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 351
    :pswitch_0
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_4G:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    .line 350
    :pswitch_1
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_3G:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    .line 349
    :pswitch_2
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_2G:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    .line 348
    :pswitch_3
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->MOBILE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    .line 347
    :pswitch_4
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->WIFI:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    .line 346
    :pswitch_5
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->ETHERNET:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    .line 345
    :pswitch_6
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->CONNECTIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 382
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/appodeal/ads/api/Device$ConnectionType;",
            ">;"
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/appodeal/ads/api/Device$ConnectionType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    invoke-static {p0}, Lcom/appodeal/ads/api/Device$ConnectionType;->forNumber(I)Lcom/appodeal/ads/api/Device$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/appodeal/ads/api/Device$ConnectionType;
    .locals 2

    .line 389
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/api/Device$ConnectionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 394
    sget-object p0, Lcom/appodeal/ads/api/Device$ConnectionType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0

    .line 396
    :cond_0
    sget-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->VALUES:[Lcom/appodeal/ads/api/Device$ConnectionType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 390
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$ConnectionType;
    .locals 1

    .line 258
    const-class v0, Lcom/appodeal/ads/api/Device$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/api/Device$ConnectionType;
    .locals 1

    .line 258
    sget-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->$VALUES:[Lcom/appodeal/ads/api/Device$ConnectionType;

    invoke-virtual {v0}, [Lcom/appodeal/ads/api/Device$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/api/Device$ConnectionType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 378
    invoke-static {}, Lcom/appodeal/ads/api/Device$ConnectionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 322
    sget-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$ConnectionType;

    if-eq p0, v0, :cond_0

    .line 326
    iget v0, p0, Lcom/appodeal/ads/api/Device$ConnectionType;->value:I

    return v0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 370
    sget-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$ConnectionType;

    if-eq p0, v0, :cond_0

    .line 374
    invoke-static {}, Lcom/appodeal/ads/api/Device$ConnectionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$ConnectionType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
