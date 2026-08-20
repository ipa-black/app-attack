.class public final Lcom/appodeal/ads/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/f1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "amazon"

    goto :goto_0

    :cond_0
    const-string v0, "google"

    :goto_0
    sput-object v0, Lcom/appodeal/ads/utils/d;->a:Ljava/lang/String;

    return-void
.end method
