.class public final enum Lcom/appodeal/ads/api/Device$DeviceType;
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
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/api/Device$DeviceType;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/api/Device$DeviceType;

.field public static final enum DEVICETYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$DeviceType;

.field public static final DEVICETYPE_UNKNOWN_VALUE:I = 0x0

.field public static final enum PHONE:Lcom/appodeal/ads/api/Device$DeviceType;

.field public static final PHONE_VALUE:I = 0x4

.field public static final enum TABLET:Lcom/appodeal/ads/api/Device$DeviceType;

.field public static final TABLET_VALUE:I = 0x5

.field public static final enum UNRECOGNIZED:Lcom/appodeal/ads/api/Device$DeviceType;

.field private static final VALUES:[Lcom/appodeal/ads/api/Device$DeviceType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/appodeal/ads/api/Device$DeviceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 416
    new-instance v0, Lcom/appodeal/ads/api/Device$DeviceType;

    const-string v1, "DEVICETYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appodeal/ads/api/Device$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->DEVICETYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$DeviceType;

    .line 420
    new-instance v1, Lcom/appodeal/ads/api/Device$DeviceType;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, "PHONE"

    invoke-direct {v1, v4, v2, v3}, Lcom/appodeal/ads/api/Device$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appodeal/ads/api/Device$DeviceType;->PHONE:Lcom/appodeal/ads/api/Device$DeviceType;

    .line 424
    new-instance v2, Lcom/appodeal/ads/api/Device$DeviceType;

    const/4 v3, 0x2

    const/4 v4, 0x5

    const-string v5, "TABLET"

    invoke-direct {v2, v5, v3, v4}, Lcom/appodeal/ads/api/Device$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/appodeal/ads/api/Device$DeviceType;->TABLET:Lcom/appodeal/ads/api/Device$DeviceType;

    .line 425
    new-instance v3, Lcom/appodeal/ads/api/Device$DeviceType;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lcom/appodeal/ads/api/Device$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/appodeal/ads/api/Device$DeviceType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$DeviceType;

    .line 411
    filled-new-array {v0, v1, v2, v3}, [Lcom/appodeal/ads/api/Device$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->$VALUES:[Lcom/appodeal/ads/api/Device$DeviceType;

    .line 478
    new-instance v0, Lcom/appodeal/ads/api/Device$DeviceType$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Device$DeviceType$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 502
    invoke-static {}, Lcom/appodeal/ads/api/Device$DeviceType;->values()[Lcom/appodeal/ads/api/Device$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->VALUES:[Lcom/appodeal/ads/api/Device$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 518
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 519
    iput p3, p0, Lcom/appodeal/ads/api/Device$DeviceType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/appodeal/ads/api/Device$DeviceType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 468
    :cond_0
    sget-object p0, Lcom/appodeal/ads/api/Device$DeviceType;->TABLET:Lcom/appodeal/ads/api/Device$DeviceType;

    return-object p0

    .line 467
    :cond_1
    sget-object p0, Lcom/appodeal/ads/api/Device$DeviceType;->PHONE:Lcom/appodeal/ads/api/Device$DeviceType;

    return-object p0

    .line 466
    :cond_2
    sget-object p0, Lcom/appodeal/ads/api/Device$DeviceType;->DEVICETYPE_UNKNOWN:Lcom/appodeal/ads/api/Device$DeviceType;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 499
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/appodeal/ads/api/Device$DeviceType;",
            ">;"
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/appodeal/ads/api/Device$DeviceType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    invoke-static {p0}, Lcom/appodeal/ads/api/Device$DeviceType;->forNumber(I)Lcom/appodeal/ads/api/Device$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/appodeal/ads/api/Device$DeviceType;
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/api/Device$DeviceType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 511
    sget-object p0, Lcom/appodeal/ads/api/Device$DeviceType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$DeviceType;

    return-object p0

    .line 513
    :cond_0
    sget-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->VALUES:[Lcom/appodeal/ads/api/Device$DeviceType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 507
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$DeviceType;
    .locals 1

    .line 411
    const-class v0, Lcom/appodeal/ads/api/Device$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Device$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/api/Device$DeviceType;
    .locals 1

    .line 411
    sget-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->$VALUES:[Lcom/appodeal/ads/api/Device$DeviceType;

    invoke-virtual {v0}, [Lcom/appodeal/ads/api/Device$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/api/Device$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 495
    invoke-static {}, Lcom/appodeal/ads/api/Device$DeviceType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 443
    sget-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$DeviceType;

    if-eq p0, v0, :cond_0

    .line 447
    iget v0, p0, Lcom/appodeal/ads/api/Device$DeviceType;->value:I

    return v0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 487
    sget-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$DeviceType;

    if-eq p0, v0, :cond_0

    .line 491
    invoke-static {}, Lcom/appodeal/ads/api/Device$DeviceType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$DeviceType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
