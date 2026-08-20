.class public final Lcom/appodeal/consent/view/b;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/consent/view/b$c;,
        Lcom/appodeal/consent/view/b$b;,
        Lcom/appodeal/consent/view/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/consent/view/b$c;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/appodeal/consent/Consent;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appodeal/consent/Vendor;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Lcom/appodeal/consent/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/consent/internal/d;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/util/Map;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentDialogUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customVendors"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appodeal/consent/view/b;->a:Lcom/appodeal/consent/view/b$c;

    iput-object p3, p0, Lcom/appodeal/consent/view/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/consent/view/b;->c:Lcom/appodeal/consent/Consent;

    iput-object p5, p0, Lcom/appodeal/consent/view/b;->d:Ljava/util/Map;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/consent/view/b;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/appodeal/consent/view/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/appodeal/consent/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/appodeal/consent/view/b$b;

    invoke-direct {p1, p0}, Lcom/appodeal/consent/view/b$b;-><init>(Lcom/appodeal/consent/view/b;)V

    const-string p2, "ConsentManager"

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/appodeal/consent/view/b$a;

    invoke-direct {p1, p0}, Lcom/appodeal/consent/view/b$a;-><init>(Lcom/appodeal/consent/view/b;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p1, Lcom/appodeal/consent/view/c;

    invoke-direct {p1, p0}, Lcom/appodeal/consent/view/c;-><init>(Lcom/appodeal/consent/view/b;)V

    invoke-static {p0, p1}, Lcom/appodeal/consent/view/d;->a(Lcom/appodeal/consent/view/b;Lcom/appodeal/consent/view/c;)Lcom/appodeal/consent/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/consent/view/b;->h:Lcom/appodeal/consent/view/a;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/consent/view/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/consent/view/b;->getCloseJs()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/appodeal/consent/view/b;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v0, "javascript: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/appodeal/consent/view/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/consent/view/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/appodeal/consent/view/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/consent/view/b;->getConsentJs()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/appodeal/consent/view/b;)Lcom/appodeal/consent/view/b$c;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/consent/view/b;->a:Lcom/appodeal/consent/view/b$c;

    return-object p0
.end method

.method public static final synthetic e(Lcom/appodeal/consent/view/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/consent/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic f(Lcom/appodeal/consent/view/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/consent/view/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic g(Lcom/appodeal/consent/view/b;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/consent/view/b;->e:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method private final getCloseJs()Ljava/lang/String;
    .locals 1

    const-string v0, "closeConsentDialog()"

    return-object v0
.end method

.method private final getConsentJs()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/appodeal/consent/view/b;->c:Lcom/appodeal/consent/Consent;

    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consent.toJson().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\""

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, "\\\\\""

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/consent/view/b;->d:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/consent/Vendor;

    invoke-virtual {v3}, Lcom/appodeal/consent/Vendor;->toJson$apd_consent()Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showConsentDialog(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\",\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/appodeal/consent/view/d;->b(Lcom/appodeal/consent/view/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/appodeal/consent/view/d;->a(Lcom/appodeal/consent/view/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/consent/view/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/appodeal/consent/view/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method public final getCloseButton()Lcom/appodeal/consent/view/a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/view/b;->h:Lcom/appodeal/consent/view/a;

    return-object v0
.end method
