.class public Lcom/criteo/publisher/f0/q;
.super Ljava/lang/Object;
.source "MetricParser.java"


# instance fields
.field private final a:Lcom/criteo/publisher/n0/l;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/l;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/criteo/publisher/f0/q;->a:Lcom/criteo/publisher/n0/l;

    return-void
.end method


# virtual methods
.method a(Ljava/io/InputStream;)Lcom/criteo/publisher/f0/n;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/f0/q;->a:Lcom/criteo/publisher/n0/l;

    const-class v1, Lcom/criteo/publisher/f0/n;

    invoke-virtual {v0, v1, p1}, Lcom/criteo/publisher/n0/l;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/f0/n;

    return-object p1
.end method

.method a(Lcom/criteo/publisher/f0/n;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/criteo/publisher/f0/q;->a:Lcom/criteo/publisher/n0/l;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/n0/l;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
