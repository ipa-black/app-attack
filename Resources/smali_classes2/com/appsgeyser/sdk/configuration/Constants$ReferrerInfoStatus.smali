.class public final enum Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/configuration/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferrerInfoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum REMOTE_EXCEPTION:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

.field public static final enum UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
    .locals 4

    .line 21
    sget-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    sget-object v1, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    sget-object v2, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    sget-object v3, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->REMOTE_EXCEPTION:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "FEATURE_NOT_SUPPORTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    new-instance v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    const-string v1, "REMOTE_EXCEPTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->REMOTE_EXCEPTION:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    .line 21
    invoke-static {}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->$values()[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->$VALUES:[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
    .locals 1

    .line 21
    const-class v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
    .locals 1

    .line 21
    sget-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->$VALUES:[Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    return-object v0
.end method
