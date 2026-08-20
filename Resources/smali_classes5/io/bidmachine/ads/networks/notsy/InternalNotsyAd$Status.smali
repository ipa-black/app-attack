.class final enum Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;
.super Ljava/lang/Enum;
.source "InternalNotsyAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

.field public static final enum Idle:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

.field public static final enum Loaded:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

.field public static final enum Loading:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

.field public static final enum Showing:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

.field public static final enum Shown:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 130
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Idle:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    new-instance v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    const-string v2, "Loading"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Loading:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    new-instance v2, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    const-string v3, "Loaded"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Loaded:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    new-instance v3, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    const-string v4, "Showing"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Showing:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    new-instance v4, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    const-string v5, "Shown"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Shown:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    .line 129
    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    move-result-object v0

    sput-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->$VALUES:[Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;
    .locals 1

    .line 129
    const-class v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;
    .locals 1

    .line 129
    sget-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->$VALUES:[Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {v0}, [Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    return-object v0
.end method
