.class public final enum Lcom/appodeal/ads/api/Event$EventType;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/api/Event$EventType;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/api/Event$EventType;

.field public static final enum CLICK:Lcom/appodeal/ads/api/Event$EventType;

.field public static final CLICK_VALUE:I = 0x3

.field public static final enum FINISH:Lcom/appodeal/ads/api/Event$EventType;

.field public static final FINISH_VALUE:I = 0x4

.field public static final enum IAP:Lcom/appodeal/ads/api/Event$EventType;

.field public static final IAP_VALUE:I = 0x1

.field public static final enum INSTALL:Lcom/appodeal/ads/api/Event$EventType;

.field public static final INSTALL_VALUE:I = 0x0

.field public static final enum SHOW:Lcom/appodeal/ads/api/Event$EventType;

.field public static final SHOW_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/appodeal/ads/api/Event$EventType;

.field private static final VALUES:[Lcom/appodeal/ads/api/Event$EventType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/appodeal/ads/api/Event$EventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 126
    new-instance v0, Lcom/appodeal/ads/api/Event$EventType;

    const-string v1, "INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appodeal/ads/api/Event$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appodeal/ads/api/Event$EventType;->INSTALL:Lcom/appodeal/ads/api/Event$EventType;

    .line 130
    new-instance v1, Lcom/appodeal/ads/api/Event$EventType;

    const-string v2, "IAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/appodeal/ads/api/Event$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appodeal/ads/api/Event$EventType;->IAP:Lcom/appodeal/ads/api/Event$EventType;

    .line 134
    new-instance v2, Lcom/appodeal/ads/api/Event$EventType;

    const-string v3, "SHOW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/appodeal/ads/api/Event$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/appodeal/ads/api/Event$EventType;->SHOW:Lcom/appodeal/ads/api/Event$EventType;

    .line 138
    new-instance v3, Lcom/appodeal/ads/api/Event$EventType;

    const-string v4, "CLICK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/appodeal/ads/api/Event$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/appodeal/ads/api/Event$EventType;->CLICK:Lcom/appodeal/ads/api/Event$EventType;

    .line 142
    new-instance v4, Lcom/appodeal/ads/api/Event$EventType;

    const-string v5, "FINISH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/appodeal/ads/api/Event$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/appodeal/ads/api/Event$EventType;->FINISH:Lcom/appodeal/ads/api/Event$EventType;

    .line 143
    new-instance v5, Lcom/appodeal/ads/api/Event$EventType;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v5, v8, v6, v7}, Lcom/appodeal/ads/api/Event$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/appodeal/ads/api/Event$EventType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Event$EventType;

    .line 121
    filled-new-array/range {v0 .. v5}, [Lcom/appodeal/ads/api/Event$EventType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Event$EventType;->$VALUES:[Lcom/appodeal/ads/api/Event$EventType;

    .line 206
    new-instance v0, Lcom/appodeal/ads/api/Event$EventType$1;

    invoke-direct {v0}, Lcom/appodeal/ads/api/Event$EventType$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/api/Event$EventType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 230
    invoke-static {}, Lcom/appodeal/ads/api/Event$EventType;->values()[Lcom/appodeal/ads/api/Event$EventType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/api/Event$EventType;->VALUES:[Lcom/appodeal/ads/api/Event$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput p3, p0, Lcom/appodeal/ads/api/Event$EventType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/appodeal/ads/api/Event$EventType;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 196
    :cond_0
    sget-object p0, Lcom/appodeal/ads/api/Event$EventType;->FINISH:Lcom/appodeal/ads/api/Event$EventType;

    return-object p0

    .line 195
    :cond_1
    sget-object p0, Lcom/appodeal/ads/api/Event$EventType;->CLICK:Lcom/appodeal/ads/api/Event$EventType;

    return-object p0

    .line 194
    :cond_2
    sget-object p0, Lcom/appodeal/ads/api/Event$EventType;->SHOW:Lcom/appodeal/ads/api/Event$EventType;

    return-object p0

    .line 193
    :cond_3
    sget-object p0, Lcom/appodeal/ads/api/Event$EventType;->IAP:Lcom/appodeal/ads/api/Event$EventType;

    return-object p0

    .line 192
    :cond_4
    sget-object p0, Lcom/appodeal/ads/api/Event$EventType;->INSTALL:Lcom/appodeal/ads/api/Event$EventType;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 227
    invoke-static {}, Lcom/appodeal/ads/api/Event;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
            "Lcom/appodeal/ads/api/Event$EventType;",
            ">;"
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/appodeal/ads/api/Event$EventType;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/appodeal/ads/api/Event$EventType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {p0}, Lcom/appodeal/ads/api/Event$EventType;->forNumber(I)Lcom/appodeal/ads/api/Event$EventType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/appodeal/ads/api/Event$EventType;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/api/Event$EventType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 239
    sget-object p0, Lcom/appodeal/ads/api/Event$EventType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Event$EventType;

    return-object p0

    .line 241
    :cond_0
    sget-object v0, Lcom/appodeal/ads/api/Event$EventType;->VALUES:[Lcom/appodeal/ads/api/Event$EventType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 235
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/api/Event$EventType;
    .locals 1

    .line 121
    const-class v0, Lcom/appodeal/ads/api/Event$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/api/Event$EventType;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/api/Event$EventType;
    .locals 1

    .line 121
    sget-object v0, Lcom/appodeal/ads/api/Event$EventType;->$VALUES:[Lcom/appodeal/ads/api/Event$EventType;

    invoke-virtual {v0}, [Lcom/appodeal/ads/api/Event$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/api/Event$EventType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 223
    invoke-static {}, Lcom/appodeal/ads/api/Event$EventType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 169
    sget-object v0, Lcom/appodeal/ads/api/Event$EventType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Event$EventType;

    if-eq p0, v0, :cond_0

    .line 173
    iget v0, p0, Lcom/appodeal/ads/api/Event$EventType;->value:I

    return v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 215
    sget-object v0, Lcom/appodeal/ads/api/Event$EventType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Event$EventType;

    if-eq p0, v0, :cond_0

    .line 219
    invoke-static {}, Lcom/appodeal/ads/api/Event$EventType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appodeal/ads/api/Event$EventType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
