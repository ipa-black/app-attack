.class public Lcom/criteo/publisher/i0/c;
.super Ljava/lang/Object;
.source "IntegrationRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/i0/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/n0/q;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/criteo/publisher/i0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/criteo/publisher/i0/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/criteo/publisher/i0/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/i0/b;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationDetector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/i0/c;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/criteo/publisher/i0/c;->c:Lcom/criteo/publisher/i0/b;

    .line 30
    new-instance p2, Lcom/criteo/publisher/n0/q;

    invoke-direct {p2, p1}, Lcom/criteo/publisher/n0/q;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p2, p0, Lcom/criteo/publisher/i0/c;->a:Lcom/criteo/publisher/n0/q;

    return-void
.end method

.method private a()Lcom/criteo/publisher/i0/a;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/i0/c;->c:Lcom/criteo/publisher/i0/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/i0/b;->b()Z

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/criteo/publisher/i0/c;->c:Lcom/criteo/publisher/i0/b;

    invoke-virtual {v1}, Lcom/criteo/publisher/i0/b;->a()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 68
    sget-object v0, Lcom/criteo/publisher/i0/a;->b:Lcom/criteo/publisher/i0/a;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/criteo/publisher/i0/a;->e:Lcom/criteo/publisher/i0/a;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 72
    sget-object v0, Lcom/criteo/publisher/i0/a;->f:Lcom/criteo/publisher/i0/a;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/i0/a;)V
    .locals 2

    const-string v0, "integration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/criteo/publisher/i0/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CriteoCachedIntegration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/criteo/publisher/i0/c;->c()Lcom/criteo/publisher/i0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/i0/a;->a()I

    move-result v0

    return v0
.end method

.method public c()Lcom/criteo/publisher/i0/a;
    .locals 3

    .line 46
    invoke-direct {p0}, Lcom/criteo/publisher/i0/c;->a()Lcom/criteo/publisher/i0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/i0/c;->a:Lcom/criteo/publisher/n0/q;

    .line 52
    sget-object v1, Lcom/criteo/publisher/i0/a;->b:Lcom/criteo/publisher/i0/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "CriteoCachedIntegration"

    invoke-virtual {v0, v2, v1}, Lcom/criteo/publisher/n0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "safeSharedPreferences.ge\u2026ion.FALLBACK.name\n    )!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-static {v0}, Lcom/criteo/publisher/i0/a;->valueOf(Ljava/lang/String;)Lcom/criteo/publisher/i0/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    .line 59
    sget-object v0, Lcom/criteo/publisher/i0/a;->b:Lcom/criteo/publisher/i0/a;

    :goto_0
    return-object v0
.end method
