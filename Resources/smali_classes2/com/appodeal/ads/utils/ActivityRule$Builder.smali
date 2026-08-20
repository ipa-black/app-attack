.class public final Lcom/appodeal/ads/utils/ActivityRule$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/ActivityRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0003\u001a\u00020\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/appodeal/ads/utils/ActivityRule$Builder;",
        "",
        "Lcom/appodeal/ads/utils/ActivityRule;",
        "build",
        "",
        "activityClassName",
        "<init>",
        "(Ljava/lang/String;)V",
        "apd_core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "activityClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/utils/ActivityRule$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/appodeal/ads/utils/ActivityRule;
    .locals 2

    new-instance v0, Lcom/appodeal/ads/utils/ActivityRule;

    iget-object v1, p0, Lcom/appodeal/ads/utils/ActivityRule$Builder;->a:Ljava/lang/String;

    .line 1
    invoke-direct {v0, v1}, Lcom/appodeal/ads/utils/ActivityRule;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
