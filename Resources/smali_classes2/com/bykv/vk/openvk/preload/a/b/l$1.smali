.class final Lcom/bykv/vk/openvk/preload/a/b/l$1;
.super Lcom/bykv/vk/openvk/preload/a/b/l;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/a/b/l;->a()Lcom/bykv/vk/openvk/preload/a/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/l$1;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/l$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/b/l$1;->b(Ljava/lang/Class;)V

    .line 50
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/l$1;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/l$1;->b:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
