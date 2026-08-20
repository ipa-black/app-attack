.class public final enum Lcom/appodeal/ads/api/Geo$LocationType;
.super Ljava/lang/Enum;
.source "Geo.java"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Geo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/api/Geo$LocationType;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/api/Geo$LocationType;

.field public static final enum GPS:Lcom/appodeal/ads/api/Geo$LocationType;

.field public static final GPS_VALUE:I = 0x1

.field public static final enum IP:Lcom/appodeal/ads/api/Geo$LocationType;

.field public static final IP_VALUE:I = 0x2

.field public static final enum LOCATIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Geo$LocationType;

.field public static final LOCATIONTYPE_UNKNOWN_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Lcom/appodeal/ads/api/Geo$LocationType;

.field public static final enum USERPROVIDED:Lcom/appodeal/ads/api/Geo$LocationType;

.field public static final USERPROVIDED_VALUE:I = 0x3

.field private static final VALUES:[Lcom/appodeal/ads/api/Geo$LocationType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/appodeal/ads/api/Geo$LocationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 122
    new-instance v0, Lcom/appodeal/ads/api/Geo$LocationType;

    const-string v1, "LOCATIONTYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appodeal/ads/api/Geo$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->LOCATIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Geo$LocationType;

    .line 126
    new-instance v1, Lcom/appodeal/ads/api/Geo$LocationType;

    const-string v2, "GPS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/appodeal/ads/api/Geo$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appodeal/ads/api/Geo$LocationType;->GPS:Lcom/appodeal/ads/api/Geo$LocationType;

    .line 130
    new-instance v2, Lcom/appodeal/ads/api/Geo$LocationType;

    const-string v3, "IP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/appodeal/ads/api/Geo$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/appodeal/ads/api/Geo$LocationType;->IP:Lcom/appodeal/ads/api/Geo$LocationType;

    .line 134
    new-instance v3, Lcom/appodeal/ads/api/Geo$LocationType;

    const-string v4, "USERPROVIDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/appodeal/ads/api/Geo$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/appodeal/ads/api/Geo$LocationType;->USERPROVIDED:Lcom/appodeal/ads/api/Geo$LocationType;

    .line 135
    new-instance v4, Lcom/appodeal/ads/api/Geo$LocationType;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    invoke-direct {v4, v7, v5, v6}, Lcom/appodeal/ads/api/Geo$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/appodeal/ads/api/Geo$LocationType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Geo$LocationType;

    .line 117
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/appodeal/ads/api/Geo$LocationType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->$VALUES:[Lcom/appodeal/ads/api/Geo$LocationType;

    .line 193
    new-instance v0, Lcom/appodeal/ads/api/Geo$LocationType$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Geo$LocationType$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 217
    invoke-static {}, Lcom/appodeal/ads/api/Geo$LocationType;->values()[Lcom/appodeal/ads/api/Geo$LocationType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->VALUES:[Lcom/appodeal/ads/api/Geo$LocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lcom/appodeal/ads/api/Geo$LocationType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/appodeal/ads/api/Geo$LocationType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_0
    sget-object p0, Lcom/appodeal/ads/api/Geo$LocationType;->USERPROVIDED:Lcom/appodeal/ads/api/Geo$LocationType;

    return-object p0

    .line 182
    :cond_1
    sget-object p0, Lcom/appodeal/ads/api/Geo$LocationType;->IP:Lcom/appodeal/ads/api/Geo$LocationType;

    return-object p0

    .line 181
    :cond_2
    sget-object p0, Lcom/appodeal/ads/api/Geo$LocationType;->GPS:Lcom/appodeal/ads/api/Geo$LocationType;

    return-object p0

    .line 180
    :cond_3
    sget-object p0, Lcom/appodeal/ads/api/Geo$LocationType;->LOCATIONTYPE_UNKNOWN:Lcom/appodeal/ads/api/Geo$LocationType;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 214
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
            "Lcom/appodeal/ads/api/Geo$LocationType;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/appodeal/ads/api/Geo$LocationType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/appodeal/ads/api/Geo$LocationType;->forNumber(I)Lcom/appodeal/ads/api/Geo$LocationType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/appodeal/ads/api/Geo$LocationType;
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/api/Geo$LocationType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 226
    sget-object p0, Lcom/appodeal/ads/api/Geo$LocationType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Geo$LocationType;

    return-object p0

    .line 228
    :cond_0
    sget-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->VALUES:[Lcom/appodeal/ads/api/Geo$LocationType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 222
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/api/Geo$LocationType;
    .locals 1

    .line 117
    const-class v0, Lcom/appodeal/ads/api/Geo$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Geo$LocationType;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/api/Geo$LocationType;
    .locals 1

    .line 117
    sget-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->$VALUES:[Lcom/appodeal/ads/api/Geo$LocationType;

    invoke-virtual {v0}, [Lcom/appodeal/ads/api/Geo$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/api/Geo$LocationType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 210
    invoke-static {}, Lcom/appodeal/ads/api/Geo$LocationType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 157
    sget-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Geo$LocationType;

    if-eq p0, v0, :cond_0

    .line 161
    iget v0, p0, Lcom/appodeal/ads/api/Geo$LocationType;->value:I

    return v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 202
    sget-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Geo$LocationType;

    if-eq p0, v0, :cond_0

    .line 206
    invoke-static {}, Lcom/appodeal/ads/api/Geo$LocationType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$LocationType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
