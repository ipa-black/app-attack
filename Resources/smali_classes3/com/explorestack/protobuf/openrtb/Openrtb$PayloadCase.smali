.class public final enum Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
.super Ljava/lang/Enum;
.source "Openrtb.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumLite;
.implements Lcom/explorestack/protobuf/AbstractMessageLite$InternalOneOfEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$EnumLite;",
        "Lcom/explorestack/protobuf/AbstractMessageLite$InternalOneOfEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 144
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const/4 v1, 0x4

    const-string v2, "REQUEST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 145
    new-instance v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const/4 v2, 0x1

    const/4 v4, 0x5

    const-string v5, "RESPONSE"

    invoke-direct {v1, v5, v2, v4}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 146
    new-instance v2, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    const-string v4, "PAYLOAD_NOT_SET"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 141
    filled-new-array {v0, v1, v2}, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0

    .line 163
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0

    .line 165
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 141
    const-class v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 141
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    return v0
.end method
