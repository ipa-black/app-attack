.class public final Lcom/appodeal/consent/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlinx/coroutines/CoroutineScope;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:Lcom/appodeal/consent/Consent;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    sget-object v0, Lcom/appodeal/consent/internal/g$a;->a:Lcom/appodeal/consent/internal/g$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/consent/internal/g;->a:Lkotlin/Lazy;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/appodeal/consent/internal/g;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/appodeal/consent/internal/g;->c:Ljava/lang/String;

    new-instance v0, Lcom/appodeal/consent/Consent;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/appodeal/consent/Consent;-><init>(Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/String;JJLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appodeal/consent/internal/g;->e:Lcom/appodeal/consent/Consent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/appodeal/consent/internal/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/consent/internal/g;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/consent/internal/k;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V
    .locals 19

    move-object/from16 v2, p0

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    move-object/from16 v3, p3

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    new-instance v0, Lcom/appodeal/consent/Consent;

    const/16 v17, 0x1fc

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v5, v0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v5 .. v18}, Lcom/appodeal/consent/Consent;-><init>(Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/String;JJLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/appodeal/consent/Consent;->Companion:Lcom/appodeal/consent/Consent$a;

    invoke-static {v0, v2}, Lcom/appodeal/consent/internal/b;->a(Lcom/appodeal/consent/Consent$a;Landroid/content/Context;)Lcom/appodeal/consent/Consent;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/appodeal/consent/internal/g;->e:Lcom/appodeal/consent/Consent;

    :cond_2
    :goto_0
    move-object v3, v0

    :goto_1
    sget-object v6, Lcom/appodeal/consent/internal/g;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lcom/appodeal/consent/internal/f;

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/consent/internal/f;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p0, v6

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v7

    move/from16 p4, v0

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static a(Lcom/appodeal/consent/Consent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/appodeal/consent/internal/g;->e:Lcom/appodeal/consent/Consent;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/appodeal/consent/internal/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/appodeal/consent/internal/g;->d:Z

    return-void
.end method

.method public static b()Lcom/appodeal/consent/Consent;
    .locals 1

    sget-object v0, Lcom/appodeal/consent/internal/g;->e:Lcom/appodeal/consent/Consent;

    return-object v0
.end method
