.class public abstract Lcom/appodeal/ads/utils/x$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Lcom/appodeal/ads/utils/x;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/x;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/utils/x$d;->b:Lcom/appodeal/ads/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/appodeal/ads/utils/x$d;->a:I

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/ads/utils/x$d;)I
    .locals 0

    iget p0, p0, Lcom/appodeal/ads/utils/x$d;->a:I

    return p0
.end method


# virtual methods
.method public abstract a(Lcom/appodeal/ads/utils/x$d$a;)V
.end method

.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/appodeal/ads/utils/x$d$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/x$d$a;-><init>(Lcom/appodeal/ads/utils/x$d;)V

    iget-object v1, p0, Lcom/appodeal/ads/utils/x$d;->b:Lcom/appodeal/ads/utils/x;

    invoke-static {v1}, Lcom/appodeal/ads/utils/x;->d(Lcom/appodeal/ads/utils/x;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/appodeal/ads/utils/x;->a(Lcom/appodeal/ads/utils/x;Lorg/json/JSONArray;Lcom/appodeal/ads/utils/x$d$a;)V

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/x$d;->a(Lcom/appodeal/ads/utils/x$d$a;)V

    iget-object v1, p0, Lcom/appodeal/ads/utils/x$d;->b:Lcom/appodeal/ads/utils/x;

    invoke-static {v1}, Lcom/appodeal/ads/utils/x;->b(Lcom/appodeal/ads/utils/x;)Lcom/appodeal/ads/storage/o;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x$d$a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSONArray(sessions.values).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/x$d$a;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/appodeal/ads/storage/o;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
