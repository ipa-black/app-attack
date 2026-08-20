.class public final enum Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;
.super Ljava/lang/Enum;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/server/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum AFTERINSTALL:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum APPMODE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum CLICK:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum CONFIG_PHP:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum IMPRESSION:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum NATIVE_ADS:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum REFERRER:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum RMA:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum UPDATE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

.field public static final enum USAGE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;
    .locals 10

    .line 39
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->AFTERINSTALL:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v1, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->USAGE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v2, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->UPDATE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CLICK:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v4, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->APPMODE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v5, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CONFIG_PHP:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v6, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->NATIVE_ADS:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v7, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->IMPRESSION:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v8, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->RMA:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    sget-object v9, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->REFERRER:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    filled-new-array/range {v0 .. v9}, [Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "AFTERINSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->AFTERINSTALL:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "USAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->USAGE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->UPDATE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "CLICK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CLICK:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "APPMODE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->APPMODE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "CONFIG_PHP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CONFIG_PHP:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "NATIVE_ADS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->NATIVE_ADS:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "IMPRESSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->IMPRESSION:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "RMA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->RMA:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    const-string v1, "REFERRER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->REFERRER:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 39
    invoke-static {}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->$values()[Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->$VALUES:[Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;
    .locals 1

    .line 39
    const-class v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;
    .locals 1

    .line 39
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->$VALUES:[Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    return-object v0
.end method
