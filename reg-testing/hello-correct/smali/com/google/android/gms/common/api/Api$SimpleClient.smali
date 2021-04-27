.class public interface abstract Lcom/google/android/gms/common/api/Api$SimpleClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$AnyClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimpleClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$AnyClient;"
    }
.end annotation


# virtual methods
.method public abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public abstract getStartServiceAction()Ljava/lang/String;
.end method

.method public abstract setState(ILandroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method
