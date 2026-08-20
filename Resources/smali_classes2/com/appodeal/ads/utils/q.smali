.class public final Lcom/appodeal/ads/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/q$b;
    }
.end annotation


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/appodeal/ads/utils/q$b;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p6}, Lcom/appodeal/ads/utils/q$b;->onHandleError()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/appodeal/ads/utils/q;->b:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    sget-object v0, Lcom/appodeal/ads/utils/r;->a:Lcom/appodeal/ads/storage/o;

    if-eqz p3, :cond_5

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_4

    const-wide/16 p4, 0xb4

    :cond_4
    sget-object v0, Lcom/appodeal/ads/utils/r;->a:Lcom/appodeal/ads/storage/o;

    const-wide/32 v1, 0xea60

    mul-long/2addr p4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p4

    invoke-virtual {v0, p3, v1, v2}, Lcom/appodeal/ads/storage/o;->c(Ljava/lang/String;J)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 3
    iget-object p5, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 4
    invoke-virtual {p5, p3, p4}, Lcom/appodeal/ads/storage/b;->b(J)V

    .line 5
    :cond_5
    :goto_1
    const-string p3, "appodeal://"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/appodeal/ads/utils/q;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/appodeal/ads/utils/q;->a:Ljava/lang/String;

    new-instance p3, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;

    invoke-direct {p3, p6}, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/utils/q$b;)V

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/appodeal/ads/utils/q$a;

    invoke-direct {p2, p0, p6, p1}, Lcom/appodeal/ads/utils/q$a;-><init>(Lcom/appodeal/ads/utils/q;Lcom/appodeal/ads/utils/q$b;Landroid/content/Context;)V

    invoke-interface {p6, p2}, Lcom/appodeal/ads/utils/q$b;->processClick(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    goto :goto_3

    :cond_7
    iput-object p2, p0, Lcom/appodeal/ads/utils/q;->a:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-interface {p6, p3}, Lcom/appodeal/ads/utils/q$b;->processClick(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    new-instance p3, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;

    invoke-direct {p3, p6}, Lcom/appodeal/ads/utils/q$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/utils/q$b;)V

    :goto_2
    invoke-static {p1, p2, p3}, Lcom/appodeal/ads/n5;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    :goto_3
    return-void
.end method
