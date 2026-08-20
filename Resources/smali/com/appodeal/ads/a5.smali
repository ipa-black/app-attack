.class public final Lcom/appodeal/ads/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/a5$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appodeal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bidmachine"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mraid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vast"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nast"

    aput-object v2, v0, v1

    sput-object v0, Lcom/appodeal/ads/a5;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/appodeal/ads/a5;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/a5;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appodeal/ads/a5$a;

    .line 1
    invoke-direct {v1, p0}, Lcom/appodeal/ads/a5$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
