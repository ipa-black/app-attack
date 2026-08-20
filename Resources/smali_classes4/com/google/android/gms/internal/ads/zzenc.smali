.class public final synthetic Lcom/google/android/gms/internal/ads/zzenc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdoe;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzend;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzekt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzend;Lcom/google/android/gms/internal/ads/zzekt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenc;->zza:Lcom/google/android/gms/internal/ads/zzend;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenc;->zzb:Lcom/google/android/gms/internal/ads/zzekt;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdfa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zza:Lcom/google/android/gms/internal/ads/zzend;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenc;->zzb:Lcom/google/android/gms/internal/ads/zzekt;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzend;->zzc(Lcom/google/android/gms/internal/ads/zzekt;ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdfa;)V

    return-void
.end method
