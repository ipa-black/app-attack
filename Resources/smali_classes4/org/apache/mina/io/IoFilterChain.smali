.class public interface abstract Lorg/apache/mina/io/IoFilterChain;
.super Ljava/lang/Object;
.source "IoFilterChain.java"


# virtual methods
.method public abstract addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
.end method

.method public abstract addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
.end method

.method public abstract addFirst(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
.end method

.method public abstract addLast(Ljava/lang/String;Lorg/apache/mina/io/IoFilter;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getChild(Ljava/lang/String;)Lorg/apache/mina/io/IoFilter;
.end method

.method public abstract getChildren()Ljava/util/List;
.end method

.method public abstract getChildrenReversed()Ljava/util/List;
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
