.class public final Lcom/appodeal/ads/storage/j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveSessionAsync$1"
    f = "KeyValueStorageImpl.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/storage/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/storage/b;Ljava/lang/String;JJJJJJJLkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/storage/b;",
            "Ljava/lang/String;",
            "JJJJJJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/storage/j;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/appodeal/ads/storage/j;->a:Lcom/appodeal/ads/storage/b;

    move-object v1, p2

    iput-object v1, v0, Lcom/appodeal/ads/storage/j;->b:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/appodeal/ads/storage/j;->c:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/appodeal/ads/storage/j;->d:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/appodeal/ads/storage/j;->e:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/appodeal/ads/storage/j;->f:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/appodeal/ads/storage/j;->g:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/appodeal/ads/storage/j;->h:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/appodeal/ads/storage/j;->i:J

    const/4 v1, 0x2

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v18, p2

    new-instance v19, Lcom/appodeal/ads/storage/j;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/appodeal/ads/storage/j;->a:Lcom/appodeal/ads/storage/b;

    iget-object v3, v0, Lcom/appodeal/ads/storage/j;->b:Ljava/lang/String;

    iget-wide v4, v0, Lcom/appodeal/ads/storage/j;->c:J

    iget-wide v6, v0, Lcom/appodeal/ads/storage/j;->d:J

    iget-wide v8, v0, Lcom/appodeal/ads/storage/j;->e:J

    iget-wide v10, v0, Lcom/appodeal/ads/storage/j;->f:J

    iget-wide v12, v0, Lcom/appodeal/ads/storage/j;->g:J

    iget-wide v14, v0, Lcom/appodeal/ads/storage/j;->h:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/appodeal/ads/storage/j;->i:J

    move-wide/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v18}, Lcom/appodeal/ads/storage/j;-><init>(Lcom/appodeal/ads/storage/b;Ljava/lang/String;JJJJJJJLkotlin/coroutines/Continuation;)V

    return-object v19
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/storage/j;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/storage/j;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/storage/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/storage/j;->a:Lcom/appodeal/ads/storage/b;

    sget-object v0, Lcom/appodeal/ads/storage/b$a;->b:Lcom/appodeal/ads/storage/b$a;

    invoke-static {p1, v0}, Lcom/appodeal/ads/storage/b;->a(Lcom/appodeal/ads/storage/b;Lcom/appodeal/ads/storage/b$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/appodeal/ads/storage/j;->b:Ljava/lang/String;

    const-string v1, "session_uuid"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/appodeal/ads/storage/j;->c:J

    const-string v2, "session_id"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/appodeal/ads/storage/j;->d:J

    const-string v2, "session_uptime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/appodeal/ads/storage/j;->e:J

    const-string v2, "session_uptime_m"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/appodeal/ads/storage/j;->f:J

    const-string v2, "session_start_ts"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/appodeal/ads/storage/j;->g:J

    const-string v2, "session_start_ts_m"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/appodeal/ads/storage/j;->h:J

    const-string v2, "app_uptime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/appodeal/ads/storage/j;->i:J

    const-string v2, "app_uptime_m"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
