$NetBSD: patch-mozilla_js_src_vm_ObjectImpl-inl.h,v 1.4 2013/09/28 14:37:05 ryoon Exp $

--- mozilla/js/src/vm/ObjectImpl-inl.h.orig	2013-09-16 18:26:43.000000000 +0000
+++ mozilla/js/src/vm/ObjectImpl-inl.h
@@ -364,7 +364,7 @@ js::ObjectImpl::zone() const
 js::ObjectImpl::readBarrier(ObjectImpl *obj)
 {
 #ifdef JSGC_INCREMENTAL
-    Zone *zone = obj->zone();
+    JS::Zone *zone = obj->zone();
     if (zone->needsBarrier()) {
         MOZ_ASSERT(!zone->rt->isHeapMajorCollecting());
         JSObject *tmp = obj->asObjectPtr();
@@ -378,7 +378,7 @@ inline void
 js::ObjectImpl::privateWriteBarrierPre(void **old)
 {
 #ifdef JSGC_INCREMENTAL
-    Zone *zone = this->zone();
+    JS::Zone *zone = this->zone();
     if (zone->needsBarrier()) {
         if (*old && getClass()->trace)
             getClass()->trace(zone->barrierTracer(), this->asObjectPtr());
@@ -405,7 +405,7 @@ js::ObjectImpl::writeBarrierPre(ObjectIm
     if (IsNullTaggedPointer(obj) || !obj->runtime()->needsBarrier())
         return;
 
-    Zone *zone = obj->zone();
+    JS::Zone *zone = obj->zone();
     if (zone->needsBarrier()) {
         MOZ_ASSERT(!zone->rt->isHeapMajorCollecting());
         JSObject *tmp = obj->asObjectPtr();
