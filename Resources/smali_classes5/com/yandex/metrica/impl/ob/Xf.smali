.class public Lcom/yandex/metrica/impl/ob/Xf;
.super Lcom/yandex/metrica/impl/ob/ag;
.source "SourceFile"


# static fields
.field private static final j:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/YandexMetricaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/AppMetricaDeviceIDListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/ReporterConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Config"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->j:Lcom/yandex/metrica/impl/ob/Kn;

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    const-string v2, "Native crash"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->k:Lcom/yandex/metrica/impl/ob/Kn;

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Activity"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->l:Lcom/yandex/metrica/impl/ob/Kn;

    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Intent"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->m:Lcom/yandex/metrica/impl/ob/Kn;

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Application"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->n:Lcom/yandex/metrica/impl/ob/Kn;

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Context"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->o:Lcom/yandex/metrica/impl/ob/Kn;

    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Deeplink listener"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->p:Lcom/yandex/metrica/impl/ob/Kn;

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "DeviceID listener"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->q:Lcom/yandex/metrica/impl/ob/Kn;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Reporter Config"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->r:Lcom/yandex/metrica/impl/ob/Kn;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    const-string v2, "Deeplink"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->s:Lcom/yandex/metrica/impl/ob/Kn;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    const-string v2, "Referral url"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->t:Lcom/yandex/metrica/impl/ob/Kn;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ln;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ln;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->u:Lcom/yandex/metrica/impl/ob/Kn;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "Key"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->v:Lcom/yandex/metrica/impl/ob/Kn;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v2, "WebView"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->w:Lcom/yandex/metrica/impl/ob/Kn;

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/Fn;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->x:Lcom/yandex/metrica/impl/ob/Kn;

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/ob/Fn;

    const-string v1, "name"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Xf;->y:Lcom/yandex/metrica/impl/ob/Kn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->n:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->o:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->o:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 11
    sget-object p1, Lcom/yandex/metrica/impl/ob/Xf;->r:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p1, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->o:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 13
    sget-object p1, Lcom/yandex/metrica/impl/ob/Xf;->j:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p1, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->o:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 9
    sget-object p1, Lcom/yandex/metrica/impl/ob/Xf;->u:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p1, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->m:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->w:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->q:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkListener;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->p:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->p:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->t:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->o:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->l:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->k:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->v:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->s:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->y:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Fn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Fn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Xf;->x:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Fn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Fn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    move-result p1

    return p1
.end method
