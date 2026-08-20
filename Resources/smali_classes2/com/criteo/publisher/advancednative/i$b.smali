.class Lcom/criteo/publisher/advancednative/i$b;
.super Lcom/criteo/publisher/x;
.source "ImpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/advancednative/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final c:Ljava/net/URL;

.field private final d:Lcom/criteo/publisher/k0/g;


# direct methods
.method private constructor <init>(Ljava/net/URL;Lcom/criteo/publisher/k0/g;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/i$b;->c:Ljava/net/URL;

    .line 91
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/i$b;->d:Lcom/criteo/publisher/k0/g;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/advancednative/i$a;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/advancednative/i$b;-><init>(Ljava/net/URL;Lcom/criteo/publisher/k0/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/i$b;->d:Lcom/criteo/publisher/k0/g;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/i$b;->c:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/k0/g;->a(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method
