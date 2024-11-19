import { Router } from 'express';
import { authMiddleware, businessOwnerMiddleware } from '../middleware';
import { 
    getBusinesses,
    getBusinessById,
    createBusiness,
    updateBusiness,
    deleteBusiness,
    verifyBusiness,
    getBusinessHours,
    updateBusinessHours,
    getBusinessMaterials,
    updateBusinessMaterials
} from '../controllers/business.controller';

const router = Router();

// Public routes
router.get('/', getBusinesses);
router.get('/:id', getBusinessById);
router.get('/:id/hours', getBusinessHours);
router.get('/:id/materials', getBusinessMaterials);

// Protected routes
router.use(authMiddleware);
router.post('/', createBusiness);

// Business owner only routes
router.use(businessOwnerMiddleware);
router.put('/:id', updateBusiness);
router.delete('/:id', deleteBusiness);
router.post('/verify', verifyBusiness);
router.put('/:id/hours', updateBusinessHours);
router.put('/:id/materials', updateBusinessMaterials);

export default router; 