.class public final Lcom/appodeal/ads/storage/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/storage/a;


# static fields
.field public static final b:Lcom/appodeal/ads/storage/o;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/storage/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/storage/o;

    invoke-direct {v0}, Lcom/appodeal/ads/storage/o;-><init>()V

    sput-object v0, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/storage/m;->a()Lcom/appodeal/ads/storage/b;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r0$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/r0$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/appodeal/ads/w4;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/w4;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/appodeal/ads/y4;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/y4;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/appodeal/ads/y4;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/storage/b;->a(Ljava/lang/String;Lcom/appodeal/ads/y4;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/LinkedHashSet;Lcom/appodeal/ads/r0$b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/storage/b;->a(Ljava/util/LinkedHashSet;Lcom/appodeal/ads/r0$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0}, Lcom/appodeal/ads/storage/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lkotlin/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Triple<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    const-string v0, "part_of_audience"

    const-string v1, "key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(I)V

    return-void
.end method

.method public final a(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonString"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/appodeal/ads/storage/b;->a(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/storage/b;->c(J)V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "campaignId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appodeal/ads/storage/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;JJJJJ)V
    .locals 13

    const-string v0, "uuid"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/appodeal/ads/storage/b;->a(Ljava/lang/String;JJJJJ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "campaignId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/storage/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "campaigns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()I
    .locals 2

    const-string v0, "part_of_audience"

    const-string v1, "key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0}, Lcom/appodeal/ads/storage/b;->b()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sessions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appodeal/ads/storage/b;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/storage/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0}, Lcom/appodeal/ads/storage/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appodeal/ads/storage/b;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/storage/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 1
    sget-object v1, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 2
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3
    const-string v3, "first_ad_session_launch_time"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "campaignId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0}, Lcom/appodeal/ads/storage/b;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    .line 1
    sget-object v1, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    .line 2
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    const-string v1, "sessions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/storage/o;->a:Lcom/appodeal/ads/storage/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/storage/b;->g(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
