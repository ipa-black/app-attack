.class public Lcom/criteo/publisher/model/x;
.super Ljava/lang/Object;
.source "RemoteConfigRequestFactory.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/criteo/publisher/n0/g;

.field private final d:Lcom/criteo/publisher/i0/c;

.field private final e:Lcom/criteo/publisher/n0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/criteo/publisher/n0/g;Lcom/criteo/publisher/i0/c;Lcom/criteo/publisher/n0/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/model/x;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/criteo/publisher/model/x;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/criteo/publisher/model/x;->c:Lcom/criteo/publisher/n0/g;

    .line 52
    iput-object p4, p0, Lcom/criteo/publisher/model/x;->d:Lcom/criteo/publisher/i0/c;

    .line 53
    iput-object p5, p0, Lcom/criteo/publisher/model/x;->e:Lcom/criteo/publisher/n0/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/model/w;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/criteo/publisher/model/x;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/criteo/publisher/model/x;->a:Landroid/content/Context;

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/model/x;->c:Lcom/criteo/publisher/n0/g;

    .line 61
    invoke-virtual {v2}, Lcom/criteo/publisher/n0/g;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/model/x;->d:Lcom/criteo/publisher/i0/c;

    .line 62
    invoke-virtual {v3}, Lcom/criteo/publisher/i0/c;->b()I

    move-result v3

    iget-object v4, p0, Lcom/criteo/publisher/model/x;->e:Lcom/criteo/publisher/n0/b;

    .line 63
    invoke-virtual {v4}, Lcom/criteo/publisher/n0/b;->b()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v0, v1, v2, v3, v4}, Lcom/criteo/publisher/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/criteo/publisher/model/w;

    move-result-object v0

    return-object v0
.end method
