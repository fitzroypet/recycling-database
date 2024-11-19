import { Request, Response } from 'express';
import { BusinessService } from '../services/business.service';

export const getBusinesses = async (req: Request, res: Response) => {
    try {
        const { 
            search, 
            materials, 
            latitude, 
            longitude, 
            radius,
            page = 1,
            limit = 10
        } = req.query;

        const businesses = await BusinessService.findBusinesses({
            search: search as string,
            materials: materials as string[],
            location: latitude && longitude ? {
                latitude: parseFloat(latitude as string),
                longitude: parseFloat(longitude as string),
                radius: parseFloat(radius as string) || 10
            } : undefined,
            page: parseInt(page as string),
            limit: parseInt(limit as string)
        });

        res.json(businesses);
    } catch (error) {
        res.status(500).json({ error: 'Failed to fetch businesses' });
    }
}; 