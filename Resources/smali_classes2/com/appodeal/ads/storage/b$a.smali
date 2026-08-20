.class public final enum Lcom/appodeal/ads/storage/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/storage/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/storage/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/appodeal/ads/storage/b$a;

.field public static final enum c:Lcom/appodeal/ads/storage/b$a;

.field public static final enum d:Lcom/appodeal/ads/storage/b$a;

.field public static final enum e:Lcom/appodeal/ads/storage/b$a;

.field public static final enum f:Lcom/appodeal/ads/storage/b$a;

.field public static final synthetic g:[Lcom/appodeal/ads/storage/b$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/appodeal/ads/storage/b$a;

    const/4 v1, 0x0

    const-string v2, "appodeal"

    const-string v3, "Default"

    invoke-direct {v0, v3, v1, v2}, Lcom/appodeal/ads/storage/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    new-instance v1, Lcom/appodeal/ads/storage/b$a;

    const/4 v2, 0x1

    const-string v3, "placements_freq"

    const-string v4, "Placement"

    invoke-direct {v1, v4, v2, v3}, Lcom/appodeal/ads/storage/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appodeal/ads/storage/b$a;->c:Lcom/appodeal/ads/storage/b$a;

    new-instance v2, Lcom/appodeal/ads/storage/b$a;

    const/4 v3, 0x2

    const-string v4, "install_tracking"

    const-string v5, "InstallTracking"

    invoke-direct {v2, v5, v3, v4}, Lcom/appodeal/ads/storage/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appodeal/ads/storage/b$a;->d:Lcom/appodeal/ads/storage/b$a;

    new-instance v3, Lcom/appodeal/ads/storage/b$a;

    const/4 v4, 0x3

    const-string v5, "freq"

    const-string v6, "CampaignFrequency"

    invoke-direct {v3, v6, v4, v5}, Lcom/appodeal/ads/storage/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/appodeal/ads/storage/b$a;->e:Lcom/appodeal/ads/storage/b$a;

    new-instance v4, Lcom/appodeal/ads/storage/b$a;

    const/4 v5, 0x4

    const-string v6, "freq_clicks"

    const-string v7, "CampaignFrequencyClicks"

    invoke-direct {v4, v7, v5, v6}, Lcom/appodeal/ads/storage/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/appodeal/ads/storage/b$a;->f:Lcom/appodeal/ads/storage/b$a;

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/appodeal/ads/storage/b$a;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/ads/storage/b$a;->g:[Lcom/appodeal/ads/storage/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/storage/b$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/storage/b$a;
    .locals 1

    const-class v0, Lcom/appodeal/ads/storage/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/storage/b$a;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/storage/b$a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/storage/b$a;->g:[Lcom/appodeal/ads/storage/b$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/storage/b$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
